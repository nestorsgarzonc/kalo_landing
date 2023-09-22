part of '../screens.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final lateralPadding = MediaQuery.of(context).size.width * 0.1;
    return Container(
      height: 500,
      padding: EdgeInsets.symmetric(horizontal: lateralPadding),
      child: LayoutBuilder(builder: (context, constraints) {
        final width = constraints.maxWidth;
        return Row(
          children: [
            SizedBox(
              height: 500,
              width: width * 0.6,
              child: const _ImageInfo(
                imgPath: KaloImages.features1,
                title: 'Armamos equipos de desarrollo perfectos para ti',
                showSeeMore: true,
              ),
            ),
            const SizedBox(width: 20),
            SizedBox(
              height: 500,
              width: width * 0.4 - 20,
              child: const Column(
                children: [
                  SizedBox(
                    height: 240,
                    child: _ImageInfo(
                      imgPath: KaloImages.features2,
                      title: 'Tu Project manager te mantiene informado',
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 240,
                    child: _ImageInfo(
                      imgPath: KaloImages.features3,
                      title: 'Te damos las garantías que mereces',
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      }),
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
      return ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: Image.asset(imgPath, fit: BoxFit.cover),
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
        ),
      );
    });
  }
}
