import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: InstagramAppBar(),
      body: Column(
        children: [
          StoriesBar(),
        ],
      ),
      bottomNavigationBar: InstagramBottomBar(),
    );
  }
}

/// --- Componente: Barra Superior (AppBar) ---
class InstagramAppBar extends StatelessWidget implements PreferredSizeWidget {
  const InstagramAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.add),
      title: const Text('Instagram'),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Stack(
            children: [
              const Icon(Icons.favorite_border),
              Positioned(
                right: 0,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

/// --- Componente: Barra de Historias (Stories) ---
class StoriesBar extends StatelessWidget {
  const StoriesBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      color: Colors.red,
      child: SingleChildScrollView(
        // direcion del scroll
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 15),
            
            // --- Historia 1 (Usuario Principal con botón +) ---
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: ClipOval(
                        child: Image.network(
                          "https://gstatic.com",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text("Data"),
              ],
            ),
            const SizedBox(width: 15),

            // --- Historia 2 ---
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: ClipOval(
                    child: Image.network(
                      "https://gstatic.com",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text("Data"),
              ],
            ),
            const SizedBox(width: 15),

            // --- Historia 3 ---
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: ClipOval(
                    child: Image.network(
                      "https://gstatic.com",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text("Data"),
              ],
            ),
            const SizedBox(width: 15),

            // --- Historia 4 ---
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: ClipOval(
                    child: Image.network(
                      "https://gstatic.com",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text("Data"),
              ],
            ),
            const SizedBox(width: 15),

            // --- Historia 5 ---
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: ClipOval(
                    child: Image.network(
                      "https://gstatic.com",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text("Data"),
              ],
            ),
            const SizedBox(width: 15),

            // --- Historia 6 ---
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: ClipOval(
                    child: Image.network(
                      "https://gstatic.com",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text("Data"),
              ],
            ),
            const SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}

/// --- Componente: Barra de Navegación Inferior ---
class InstagramBottomBar extends StatelessWidget {
  const InstagramBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
        const BottomNavigationBarItem(
          icon: Icon(Icons.play_circle_fill_sharp),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              const Icon(Icons.send_sharp),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                ),
              ),
            ],
          ),
          label: '',
        ),
        const BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(
          label: '',
          icon: SizedBox(
            width: 30,
            height: 30,
            child: Stack(
              children: [
                ClipOval(
                  child: Image.network(
                    "https://magnific.com",
                    fit: BoxFit.cover,
                    width: 30,
                    height: 30,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
