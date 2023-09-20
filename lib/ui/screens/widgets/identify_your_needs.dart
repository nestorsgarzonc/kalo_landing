part of '../screens.dart';

class IdentifyYourNeeds extends StatelessWidget {
  const IdentifyYourNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
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
                  color: Color(0xFF2E9BFF),
                  blurRadius: 500,
                  spreadRadius: 80,
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          left: -250,
          top: -100,
          height: 300,
          width: 300,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF2E9BFF),
                  blurRadius: 500,
                  spreadRadius: 80,
                ),
              ],
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Color(0xFF2C91D5), Color(0xFF005AE4)],
                stops: [0, 0.7],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
              child: Text(
                '¿No estás seguro de cómo avanzar?',
                style: KaloTheme.textStyle.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 30, width: double.infinity),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Color(0xFF005AE4), Color(0xFF2C91D5)],
                stops: [0.4, 1.3],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
              child: Text(
                'Identificamos tus \nnecesidades',
                style: KaloTheme.textStyle.copyWith(
                  fontSize: 90,
                  fontWeight: FontWeight.w700,
                  height: 1.1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Contamos con consultores expertos en la resolución de proyectos que se \nencargarán de guiarte en tu proceso',
              style: KaloTheme.textStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 70),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -80,
                  right: -25,
                  child: Image.asset(
                    KaloIcons.arrow,
                    height: 70,
                  ),
                ),
                Container(
                  height: 50,
                  width: 320,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF0323E5), Color(0xFF15ABFF)],
                      stops: [0, 1],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Text(
                    'Agenda tu consultoría ahora',
                    style: KaloTheme.textStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: -25,
                  left: -34,
                  child: Transform.rotate(
                    angle: -0.5,
                    child: Container(
                      height: 40,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Text(
                        'GRATIS!!',
                        style: KaloTheme.textStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFDB2020),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
