part of './screens.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    final _lateralPadding = MediaQuery.of(context).size.width * 0.1;
    return Scaffold(
      body: ListView(
        children: [
          const HeaderWidget(),
          const PopularServices(),
          const DontWorryWidget(),
          const MethodologyWidget(),
          const DevelopersWidget(),
          SizedBox(height: _lateralPadding * 10),
        ],
      ),
    );
  }
}
