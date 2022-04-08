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
              text: 'Profil',
              onTap: () {
                Navigator.pushNamed(context, '/profil');
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
                Navigator.pushNamed(context, '/contactUs');
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
                Navigator.pushNamed(context, '/description');
              }),
          _drawerItem(
              icon: Icons.settings,
              text: 'Setting',
              onTap: () {
                Navigator.pushNamed(context, '/setting');
              }),
          _drawerItem(
              icon: Icons.collections,
              text: 'Galery',
              onTap: () {
                Navigator.pushNamed(context, '/galery');
              }),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(color: Colors.black26),
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/images/bw22.jpg'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(image: AssetImage('assets/images/2.jpg'), fit: BoxFit.cover),
      ),
    ],
    accountName: Text('Nadia', style: TextStyle(color: Colors.black)),
    accountEmail: Text('nahdhiyyah13@gmail.com', style: TextStyle(color: Colors.black)),
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

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Profil'),
        ),
        body: new Container(
            child: ListView(
          padding: EdgeInsets.all(50),
          children: [
            ListTile(
                title: CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                "assets/images/bw22.jpg",
              ),
            )),
            ListTile(),
            ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text('Sarifatun Nadia', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(Icons.work, color: Colors.black),
              title: Text('Student', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(Icons.email, color: Colors.black),
              title: Text('nahdhiyyah13@gmail.com', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ],
        )));
  }
}

class Portofolio extends StatelessWidget {
  final List<String> gambar = [
    "assets/images/bw4.jpg",
    "assets/images/bw5.jpg",
    "assets/images/bw6.jpg",
    "assets/images/bw7.jpg",
    "assets/images/bw8.jpg",
    "assets/images/bw9.jpg",
    "assets/images/bw10.jpg",
    "assets/images/bw11.jpg",
    "assets/images/bw12.jpg",
    "assets/images/bw13.jpg",
    "assets/images/bw14.jpg",
    "assets/images/bw15.jpg",
    "assets/images/bw16.jpg",
    "assets/images/bw17.jpg",
    "assets/images/bw18.jpg",
    "assets/images/bw19.jpg",
    "assets/images/bw20.jpg",
    "assets/images/bw21.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Portofolio"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          17,
          (index) {
            return Card(
              child: Image.asset(
                gambar[index],
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}

class ContactUs extends StatelessWidget {
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

class Description extends StatelessWidget {
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

class Setting extends StatelessWidget {
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

class Galery extends StatelessWidget {
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
