part of './screens.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          HeaderWidget(),
          PopularServices(),
          DontWorryWidget(),
          ServicesWidget(),
          SizedBox(height: 130),
          MethodologyWidget(),
          DevelopersWidget(key: Key('developers_widget')),
          TrustedInUs(),
          IdentifyYourNeeds(),
          SizedBox(height: 60),
          PlatformInConstruction(),
          FooterWidget(),
        ],
      ),
    );
  }
}
