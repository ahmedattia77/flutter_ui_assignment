import 'package:flutter/material.dart';
import 'package:flutter_application_2/buttons.dart';
import 'package:flutter_application_2/instegram.dart';
import 'package:flutter_application_2/whats_app.dart';

void main() {
  runApp(const WhatsApp());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Center(
        child: Scaffold(
          appBar: AppBar(title: Text("flutter tutorial")),
          bottomNavigationBar: NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: "home"),
              NavigationDestination(icon: Icon(Icons.search), label: "search"),
              NavigationDestination(
                icon: Icon(Icons.favorite),
                label: "favorit",
              ),
            ],
            selectedIndex: 1,
            animationDuration: Duration(milliseconds: 9),
            onDestinationSelected: (value) {
              print(value);
            },
          ),
          floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                onPressed: () => {print("floating action bottom clicked")},
                child: Icon(Icons.add),
              ),
              SizedBox(height: 14),
              FloatingActionButton(
                onPressed: () => {print("floating action bottom clicked")},
                child: Icon(Icons.add),
              ),
            ],
          ),
          drawer: SafeArea(
            child: Drawer(
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    DrawerHeader(
                      child: Text(
                        "Drawer nav",
                        style: TextStyle(fontFamily: "RobotoMono"),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.search),
                      title: Text("search"),
                    ),
                    ListTile(
                      leading: Icon(Icons.favorite),
                      title: Text("favorite"),
                    ),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("log out"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.teal,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              null;
            },
          ),
          actions: [
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.favorite), onPressed: () {}),
            IconButton(icon: const Icon(Icons.share), onPressed: () {}),
          ],
          title: Text("Fluutter Demo"),
          backgroundColor: const Color.fromARGB(255, 113, 5, 146),
        ),
        body: Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("clicked ", style: TextStyle(fontFamily: "monospace")),
                  Text(
                    "not clicked yet ",
                    style: TextStyle(fontFamily: "monospace"),
                  ),
                ],
              ),

              SizedBox(height: 20),

              Expanded(
                child: Row(
                  children: <Widget>[
                    Spacer(),
                    ButtonTypesGroup(enabled: true),
                    VerticalDivider(
                      thickness: 0.6,
                      color: Colors.black,
                      indent: 10,
                      endIndent: 10,
                    ),
                    ButtonTypesGroup(enabled: false),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
