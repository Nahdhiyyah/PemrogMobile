import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.account_circle,
              text: 'Account',
              onTap: () {
                Navigator.pushNamed(context, '/about');
              }),
          _drawerItem(
              icon: Icons.business_center,
              text: 'Portofolio',
              onTap: () {
                Navigator.pushNamed(context, '/portofolio');
              }),
          _drawerItem(
              icon: Icons.contact_phone,
              text: 'Contact Us',
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              }),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Others",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(
              icon: Icons.event_note,
              text: 'Descriptions',
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              }),
          _drawerItem(
              icon: Icons.settings,
              text: 'Setting',
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              }),
          _drawerItem(
              icon: Icons.collections,
              text: 'Galery',
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              }),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(color: Colors.black),
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/images/kiyowo.jpg'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(image: AssetImage('assets/images/5.jpg'), fit: BoxFit.cover),
      ),
    ],
    accountName: Text('Nad'),
    accountEmail: Text('nahdhiyyah13@gmail.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Tentang Aplikasi'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Tentang Aplikasi'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
    );
  }
}

class Portofolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Portofolio'),
        ),
        body: Container(
          //color: Color.fromARGB(255, 255, 245, 233),
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/1.jpg',
                height: 350,
                width: 350,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
            ],
          ),
        ));
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Contact Person'),
        ),
        body: new Container(
            child: ListView(
          children: [
            ListTile(
              title: Container(
                width: 225,
                height: 225,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage('assets/images/1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle, color: Colors.black),
              title: Text('Sarifatun Nadia', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(Icons.email, color: Colors.black),
              title: Text('nahdhiyyah13@gmail.com', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ),
          ],
        )));
  }
}
