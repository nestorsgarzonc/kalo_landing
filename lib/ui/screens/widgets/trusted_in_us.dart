part of '../screens.dart';

class TrustedInUs extends StatelessWidget {
  const TrustedInUs({super.key});

  @override
  Widget build(BuildContext context) {
    final lateralPadding = MediaQuery.of(context).size.width * 0.1;
    return Padding(
      padding: const EdgeInsets.only(top: 140, bottom: 180),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -110,
            child: Transform.scale(
              scaleX: -1,
              child: Image.asset(KaloImages.developersWave),
            ),
          ),
          Positioned(
            top: -80,
            left: 40,
            child: Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [const Color(0xFF005AE4), const Color(0xFF005AE4).withOpacity(0.01)],
                  stops: const [0.1, 0.75],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          Positioned(
            top: -80,
            left: 190,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF005AE4).withOpacity(0.4),
                    const Color(0xFF005AE4).withOpacity(0.01)
                  ],
                  stops: const [0.1, 0.75],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: lateralPadding),
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [Color(0xFF005AE4), Color(0xFF7EFFD1)],
                  stops: [0, 1.3],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                child: Text(
                  'Han confiado \nen nosotros',
                  textAlign: TextAlign.start,
                  style: KaloTheme.textStyle.copyWith(
                    fontSize: 65,
                    fontWeight: FontWeight.w700,
                    height: 1.1,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: lateralPadding,
            top: -80,
            child: Image.asset(
              KaloImages.companies,
              width: MediaQuery.of(context).size.width * 0.4,
            ),
          ),
        ],
      ),
    );
  }
}
