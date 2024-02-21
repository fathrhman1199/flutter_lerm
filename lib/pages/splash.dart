import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home')),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: SvgPicture.asset(
              'assets/icons/sort.svg', // Path dari ikon SVG
              width: 24, // Lebar ikon
              height: 24, // Tinggi ikon
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/searcha.svg', // Path dari ikon SVG
              width: 24, // Lebar ikon
              height: 24, // Tinggi ikon
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text('Header Drawer'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: const Icon(
                  Icons.sort), // Ganti ikon ini dengan ikon yang diinginkan
              title: const Text('Menu 1'),
              onTap: () {
                // Tambahkan kode ketika item menu ditekan
              },
            ),
            ListTile(
              leading: const Icon(
                  Icons.sort), // Ganti ikon ini dengan ikon yang diinginkan
              title: const Text('Menu 2'),
              onTap: () {
                // Tambahkan kode ketika item menu ditekan
              },
            ),
            // Tambahkan item menu lainnya sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}
