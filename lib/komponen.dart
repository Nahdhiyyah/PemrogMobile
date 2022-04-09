import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
              leading: Icon(Icons.call, color: Colors.black),
              title: Text('0878-6064-6581', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
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
          gambar.length,
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
        title: Text("Contact Us"),
      ),
      body: Container(
          child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                IconButton(
                    highlightColor: Colors.pink,
                    icon: Icon(Icons.call, size: 30),
                    onPressed: () {
                      Navigator.pushNamed(context, '/profil');
                    })
              ]),
              Column(children: [
                IconButton(
                    highlightColor: Colors.pink,
                    icon: Icon(Icons.email, size: 30),
                    onPressed: () {
                      Navigator.pushNamed(context, '/profil');
                    })
              ]),
            ],
          ),
          Padding(padding: EdgeInsets.all(15)),
          TextFormField(
            cursorColor: Colors.black12,
            decoration: new InputDecoration(
              hintText: "tulis nama lengkap",
              labelText: "Nama Lengkap",
              labelStyle: TextStyle(color: Colors.black),
              icon: Icon(Icons.people, color: Colors.black),
              enabledBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.black)),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextFormField(
            cursorColor: Colors.black12,
            decoration: new InputDecoration(
              hintText: "tulis alamat email",
              labelText: "Email",
              labelStyle: TextStyle(color: Colors.black),
              icon: Icon(Icons.email, color: Colors.black),
              enabledBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.black)),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextFormField(
            cursorColor: Colors.black12,
            decoration: new InputDecoration(
              hintText: "tulis pesan",
              labelText: "Pesan",
              labelStyle: TextStyle(color: Colors.black),
              icon: Icon(Icons.chat, color: Colors.black),
              enabledBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.black)),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          ElevatedButton(
            onPressed: () => print("Data anda telah terekam"),
            child: Text("Submit"),
            style: ElevatedButton.styleFrom(primary: Colors.black),
          )
        ],
      )),
    );
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
    return Scaffold();
  }
}
