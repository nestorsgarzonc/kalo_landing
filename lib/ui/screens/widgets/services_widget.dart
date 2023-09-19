part of '../screens.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final lateralPadding = MediaQuery.of(context).size.width * 0.1;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: lateralPadding),
      child: const Row(
        children: [
          Expanded(
            flex: 4,
            child: _ImageInfo(
              imgPath: KaloImages.features1,
              title: 'Armamos equipos de desarrollo perfectos para ti',
              showSeeMore: true,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                _ImageInfo(
                  imgPath: KaloImages.features2,
                  title: 'Tu Project manager te mantiene informado',
                ),
                SizedBox(height: 20),
                _ImageInfo(
                  imgPath: KaloImages.features3,
                  title: 'Te damos las garantías que mereces',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _ImageInfo extends StatelessWidget {
  const _ImageInfo({
    required this.imgPath,
    required this.title,
    this.showSeeMore = false,
  });

  final String imgPath;
  final String title;
  final bool showSeeMore;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(imgPath),
          ),
          Positioned(
            bottom: showSeeMore ? 32 : 18,
            left: showSeeMore ? 32 : 21,
            width: constraints.maxWidth * 0.6,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: KaloTheme.textStyle.copyWith(
                    color: Colors.white,
                    fontSize: showSeeMore ? 28 : 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (showSeeMore) ...[
                  const SizedBox(height: 5),
                  Text(
                    'Ver más',
                    style: KaloTheme.textStyle.copyWith(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ]
              ],
            ),
          ),
        ],
      );
    });
  }
}
