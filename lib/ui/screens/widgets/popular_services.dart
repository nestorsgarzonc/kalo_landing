part of '../screens.dart';

const itemCarrouselWidth = 200.0;

class PopularServices extends StatefulWidget {
  const PopularServices({super.key});

  @override
  State<PopularServices> createState() => _PopularServicesState();
}

class _PopularServicesState extends State<PopularServices> {
  final scrollController = ScrollController();

  double carrouselPadding = 0;

  double getCarrouselItemPadding(double width) {
    final numberItems = width ~/ itemCarrouselWidth;
    final padding = (width - (numberItems * itemCarrouselWidth)) / numberItems;
    carrouselPadding = padding;
    return padding;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, top: 50, bottom: 50, right: 50),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Servicios populares',
            style: KaloTheme.textStyle.copyWith(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: KaloTheme.primaryColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '¡Tú lo necesitas, nosotros lo hacemos!',
            style: KaloTheme.textStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w300),
          ),
          const SizedBox(height: 35),
          SizedBox(
            height: 270,
            width: double.infinity,
            child: Row(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => scrollController.animateTo(
                    scrollController.offset - itemCarrouselWidth - carrouselPadding,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  ),
                  color: Colors.deepPurple,
                  icon: const Icon(Icons.chevron_left, size: 80),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: LayoutBuilder(builder: (context, constraints) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      controller: scrollController,
                      itemCount: PopularServicesCard.items.length,
                      itemBuilder: (context, index) => PopularServicesCard(
                        margin: getCarrouselItemPadding(constraints.maxWidth),
                        imagePath: PopularServicesCard.items[index].$1,
                        title: PopularServicesCard.items[index].$2,
                        subtitle: PopularServicesCard.items[index].$3,
                      ),
                    );
                  }),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => scrollController.animateTo(
                    scrollController.offset + itemCarrouselWidth + carrouselPadding,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  ),
                  color: Colors.deepPurple,
                  icon: const Icon(Icons.chevron_right, size: 80),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PopularServicesCard extends StatelessWidget {
  const PopularServicesCard({
    super.key,
    required this.margin,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  final double margin;
  final String imagePath;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: itemCarrouselWidth,
      margin: EdgeInsets.only(right: margin / 2, left: margin / 2),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
          Positioned(
            left: 12,
            bottom: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: KaloTheme.textStyle
                      .copyWith(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  subtitle,
                  style: KaloTheme.textStyle.copyWith(color: Colors.white, fontSize: 24),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static const List<(String path, String title, String subtitle)> items = [
    (KaloImages.carrousel0, 'Sitios', 'WEB'),
    (KaloImages.carrousel1, 'Bases de', 'DATOS'),
    (KaloImages.carrousel2, 'Software', 'A MEDIDA'),
    (KaloImages.carrousel3, 'E-commerce', 'PERSONALIZADOS'),
    (KaloImages.carrousel4, 'Aplicaciones', 'MÓVILES'),
    (KaloImages.carrousel5, 'Integración', 'DE SISTEMAS'),
    (KaloImages.carrousel6, 'Consultorías', 'TECNOLÓGICAS'),
    (KaloImages.carrousel7, 'Servicios en', 'NUBE'),
    (KaloImages.carrousel8, 'Prototipados', 'FRONT-END'),
    (KaloImages.carrousel9, 'Mantenimiento', 'DE PÁGINAS'),
    (KaloImages.carrousel10, 'Diseño', 'UI/UX'),
    (KaloImages.carrousel11, 'Desarrollo', 'DE MVP\'S')
  ];
}
