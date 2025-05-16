import 'package:flutter/material.dart';
import 'package:untitled9/model/pessoa.dart';
import 'package:untitled9/screens/screen_details.dart';
import 'package:untitled9/screens/screen_one.dart';
import 'package:untitled9/screens/screen_two.dart';

class ScreenMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TAB's"),
          leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu),
              );
            },
          ),
          bottom: TabBar(tabs: [Icon(Icons.house), Icon(Icons.car_repair)]),
        ),
        body: TabBarView(children: [ScreenOne(), ScreenTwo()]),
        drawer: Builder(
          builder: (context) {
            return Builder(
              builder: (context) {
                return Drawer(
                  child: ListView(
                    children: [
                      DrawerHeader(child: Text("Header")),
                      ListTile(
                        title: Text("Details"),
                        leading: Icon(Icons.settings),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenDetails(pessoa: Pessoa(name: "Lorenzo"))));
                        },
                      ),
                      ListTile(
                        title: Text("Screen Two"),
                        leading: Icon(Icons.alarm),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
