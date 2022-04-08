import 'package:flutter/material.dart';
import 'routes.dart';
import 'komponen.dart';

void main() {
  runApp(MaterialApp(
    home: NavigationDrawer(),
    onGenerateRoute: RouteGenerator.generateRoute,
    debugShowCheckedModeBanner: false,
  ));
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Home"),
      ),
      drawer: DrawerWidget(),
      body: Center(child: Text('Welcome..', style: TextStyle(color: Colors.black26, fontSize: 25, fontWeight: FontWeight.bold))),
    );
  }
}
