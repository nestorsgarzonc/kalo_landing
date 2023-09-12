part of '../screens.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final lateralPadding = MediaQuery.of(context).size.width * 0.1;
    return Container(
      color: KaloTheme.primaryColor,
      height: 100,
      padding: EdgeInsets.only(left: lateralPadding, top: 20),
      child: Row(
        children: [
          Image.asset(KaloIcons.logoWhite, width: 100),
          const SizedBox(width: 20),
          ...['Servicios', 'Empresas', 'Nuestro proceso', 'Comunidad'].map(
            (e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                e,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
