part of '../screens.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 47, bottom: 100),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0C0A3E), Color(0xff0442b3)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(KaloIcons.logoWhite, width: 150),
          const FooterActions(
            title: 'Empresas',
            items: ['Agenda una cita', 'Empezar proyectos', 'Contrata desarrolladores'],
          ),
          const FooterActions(
            title: 'Desarrolladores',
            items: ['Trabaja con nosotros'],
          ),
          const FooterActions(
            title: 'Compañía',
            items: ['Sobre nosotros', 'Comunidad', 'Canales'],
          ),
          const FooterActions(
            title: 'Contacto',
            items: ['Contáctanos', 'Servicio al cliente'],
          ),
        ],
      ),
    );
  }
}

class FooterActions extends StatelessWidget {
  const FooterActions({
    required this.title,
    required this.items,
    super.key,
  });

  final String title;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: KaloTheme.textStyle.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 12),
        ...items.map(
          (item) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              item,
              style: KaloTheme.textStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
