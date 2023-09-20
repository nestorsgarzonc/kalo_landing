part of '../screens.dart';

class PlatformInConstruction extends StatelessWidget {
  const PlatformInConstruction({super.key});

  static const List<(String, String)> socialNetworks = [
    (KaloIcons.instagram, '@kalo.co_'),
    (KaloIcons.linkedin, '@kalo.com.co'),
    (KaloIcons.tiktok, '@kalo.com.co'),
  ];

  @override
  Widget build(BuildContext context) {
    final lateralPadding = MediaQuery.of(context).size.width * 0.1;
    return Stack(
      children: [
        Image.asset(
          KaloImages.kaloDashboard,
          width: MediaQuery.of(context).size.width * .75,
        ),
        Positioned(
          top: 60,
          right: lateralPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [Color(0xFF005AE4), Color(0xFF00FFA3)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                child: Text(
                  '¡¡Plataforma en \nconstrucción!!',
                  style: KaloTheme.textStyle.copyWith(
                    fontSize: 42,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Síguenos en redes para no perderte ninguna \nactualización de la empresa o nuestro equipo',
                style: KaloTheme.textStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              ...socialNetworks.map(
                (e) => Padding(
                  padding: const EdgeInsets.only(bottom: 17),
                  child: Row(
                    children: [
                      Image.asset(e.$1, width: 22),
                      const SizedBox(width: 8),
                      ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [Color(0xFF005AE4), Color(0xFF52ACFF)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                        child: Text(
                          e.$2,
                          style: KaloTheme.textStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
