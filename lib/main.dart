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
        title: Text("Drawer Nav"),
      ),
      drawer: DrawerWidget(),
      body: Center(child: Text('Belajar Navigation Drawer di Flutter', style: TextStyle(fontSize: 20))),
    );
  }
}
