import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
          surface: const Color.fromARGB(255, 8, 16, 20),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24.0),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.photo_camera_outlined),
              onPressed: () {},
            ),
            PopupMenuButton<String>(
              color: Color.fromARGB(255, 8, 16, 20),
              shadowColor: Color.fromARGB(255, 0, 0, 0),
              icon: Icon(Icons.more_vert),
              onSelected: (value) => {print("you've been clicked $value")},
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(child: Text("New grop")),
                  const PopupMenuItem(child: Text("New community")),
                  const PopupMenuItem(child: Text("Broadcast List")),
                  const PopupMenuItem(child: Text("Linked devices")),
                  const PopupMenuItem(child: Text("Starred")),
                  const PopupMenuItem(child: Text("Read all")),
                  const PopupMenuItem(child: Text("Settings")),
                ];
              },
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hint: Text("Ask Meta AI or Search"),
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Color.fromARGB(255, 16, 31, 39),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.chat), label: "Chats"),
            NavigationDestination(icon: Icon(Icons.update), label: "Updates"),
            NavigationDestination(
              icon: Icon(Icons.people_outline_outlined),
              label: "Communities",
            ),
            NavigationDestination(icon: Icon(Icons.call), label: "Calles"),
          ],
          selectedIndex: 0,
          onDestinationSelected: (value) {
            print(value);
          },
          backgroundColor: Color.fromARGB(255, 6, 12, 15),
          indicatorColor: Color.fromARGB(255, 14, 27, 34),
        ),
        body: Column(children: [

        ],),
      ),
    );
  }
}
