part of '../screens.dart';

class MethodologyWidget extends StatelessWidget {
  const MethodologyWidget({super.key});

  static const double imageSize = 60;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '1, 2, 3 ¡ Listo !',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Nuestro proceso de elaboración de proyectos está \nestructurado de modo en que no te tengas que preocupar',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
        ),
        const SizedBox(height: 80),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              KaloImages.methodologyWave,
              fit: BoxFit.fitWidth,
            ),
            const Positioned(
              left: -250,
              top: 0,
              height: 300,
              width: 300,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: KaloTheme.primaryColor,
                      blurRadius: 380,
                      spreadRadius: 30,
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              right: -250,
              top: -200,
              height: 300,
              width: 300,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: KaloTheme.primaryColor,
                      blurRadius: 300,
                      spreadRadius: 20,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 280,
              top: -30,
              child: Column(
                children: [
                  Image.asset(KaloIcons.searchLogo, height: imageSize, width: imageSize),
                  const SizedBox(height: 22),
                  const Text(
                    'Identificamos\nel problema',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: KaloTheme.blueColor,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: -15,
              right: 0,
              top: 40,
              child: Column(
                children: [
                  Image.asset(KaloIcons.crewLogo, height: imageSize, width: 90),
                  const SizedBox(height: 22),
                  const Text(
                    'Armamos tu\nequipo tech',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: KaloTheme.blueColor,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 280,
              top: -30,
              child: Column(
                children: [
                  Image.asset(KaloIcons.rocketLogo, height: imageSize, width: imageSize),
                  const SizedBox(height: 22),
                  const Text(
                    '¡¡Inicia el \nproyecto!!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: KaloTheme.blueColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
