part of '../screens.dart';

class PopularServices extends StatefulWidget {
  const PopularServices({super.key});

  @override
  State<PopularServices> createState() => _PopularServicesState();
}

class _PopularServicesState extends State<PopularServices> {
  final scrollController = ScrollController();
  static const itemCarrouselWidth = 200.0;

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
                      itemBuilder: (context, index) => Container(
                        width: itemCarrouselWidth,
                        margin: EdgeInsets.only(
                          right: getCarrouselItemPadding(constraints.maxWidth) / 2,
                          left: getCarrouselItemPadding(constraints.maxWidth) / 2,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Image.network(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Programming_code.jpg/800px-Programming_code.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.2),
                                    KaloTheme.primaryColor.withOpacity(0.5),
                                  ],
                                  stops: [0.4, 1],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 12,
                              bottom: 12,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bases de',
                                    style: KaloTheme.textStyle.copyWith(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'DATOS',
                                    style: KaloTheme.textStyle
                                        .copyWith(color: Colors.white, fontSize: 24),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
