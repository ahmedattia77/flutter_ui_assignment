import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Instegram extends StatelessWidget {
  const Instegram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: AppBar(
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                iconSize: 32.0,
              ),
              centerTitle: true,
              title: PopupMenuButton<String>(
                offset: Offset(0, 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.transparent,
                padding: EdgeInsets.zero,
                itemBuilder: (context) {
                  return [
                    _buildMenuItem("Following", Icons.people_outline),
                    _buildMenuItem("Favorites", Icons.star_border),
                  ];
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Instagram",
                      style: GoogleFonts.pacifico(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.favorite_border_outlined, size: 28),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          height: 60,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home_filled), label: ""),
            NavigationDestination(
              icon: Icon(Icons.slow_motion_video_outlined),
              label: "",
            ),
            NavigationDestination(icon: Icon(Icons.send_rounded), label: ""),
            NavigationDestination(icon: Icon(Icons.search), label: ""),
            NavigationDestination(icon: Icon(Icons.person_pin), label: ""),
          ],

          onDestinationSelected: (value) {
            print(value);
          },
          backgroundColor: Color.fromARGB(255, 6, 12, 15),
          indicatorColor: Color.fromARGB(255, 14, 27, 34),
        ),
      ),
    );
  }

  PopupMenuItem<String> _buildMenuItem(String text, IconData icon) {
    return PopupMenuItem(
      value: text,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.white, size: 22),
          SizedBox(width: 12),
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }
}
