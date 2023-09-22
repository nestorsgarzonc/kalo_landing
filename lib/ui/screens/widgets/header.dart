part of '../screens.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final lateralPadding = MediaQuery.of(context).size.width * 0.1;
    return ClipPath(
      clipper: HeaderBezierClipper(),
      child: Container(
        color: const Color.fromRGBO(0, 32, 181, 1),
        padding: EdgeInsets.only(left: lateralPadding, top: 20),
        child: LayoutBuilder(builder: (context, constraints) {
          final width = constraints.maxWidth;
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 150,
                right: width * 0.2,
                child: Container(
                  height: 280,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                bottom: -380,
                right: -50,
                child: Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: -250,
                right: -800,
                child: Container(
                  height: 500,
                  width: 650,
                  transform: Matrix4.rotationZ(1),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(150),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(KaloIcons.logoWhite, width: 100),
                      const SizedBox(width: 20),
                      ...['Servicios', 'Empresas', 'Nuestro proceso', 'Comunidad'].map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(14),
                          child: Text(
                            e,
                            style: KaloTheme.acuminTextStyle.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 70),
                  Text(
                    'La tech \nhouse que \nnecesitas',
                    style: KaloTheme.textStyle.copyWith(
                      fontSize: 67,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Optimiza tu área tech y contrata desde un developer \nhasta equipos dedicados full time o por hora.',
                    style: KaloTheme.acuminTextStyle.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 92),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          'Contrata ahora',
                          style: KaloTheme.acuminTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: KaloTheme.primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(width: 42),
                      Text(
                        'Sé un desarrollador',
                        style: KaloTheme.acuminTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 180),
                ],
              ),
            ],
          );
        }),
      ),
    );
  }
}

class HeaderBezierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height * 0.87)
      ..lineTo(size.width * 0.3475, size.height * 0.8775)
      ..quadraticBezierTo(
          size.width * 0.42925, size.height * 0.89, size.width * 0.4756500, size.height * 0.945)
      ..quadraticBezierTo(
          size.width * 0.54175, size.height * 0.998, size.width * 0.6075, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
