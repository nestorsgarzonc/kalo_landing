part of '../screens.dart';

class PopularServices extends StatefulWidget {
  const PopularServices({super.key});

  @override
  State<PopularServices> createState() => _PopularServicesState();
}

class _PopularServicesState extends State<PopularServices> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final lateralPadding = MediaQuery.of(context).size.width * 0.1;
    return Padding(
      padding: EdgeInsets.only(left: lateralPadding, top: 50, bottom: 50, right: 50),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Servicios populares',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: KaloTheme.primaryColor,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '¡Tú lo necesitas, nosotros lo hacemos!',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          ),
          const SizedBox(height: 35),
          SizedBox(
            height: 270,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    controller: scrollController,
                    itemBuilder: (context, index) => Container(
                      width: 195,
                      margin: const EdgeInsets.only(right: 35),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Programming_code.jpg/800px-Programming_code.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.2),
                                  KaloTheme.primaryColor.withOpacity(0.5),
                                ],
                                stops: const [0.4, 1],
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 12,
                            bottom: 12,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bases de',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'DATOS',
                                  style: TextStyle(color: Colors.white, fontSize: 24),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => scrollController.animateTo(
                    scrollController.offset + 230,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  ),
                  color: Colors.deepPurple,
                  icon: const Icon(Icons.chevron_right, size: 80),
                ),
                SizedBox(width: lateralPadding * 0.2),
              ],
            ),
          )
        ],
      ),
    );
  }
}
