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
            child: Text("Descriptions",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                IconButton(
                    icon: Icon(Icons.call),
                    onPressed: () {
                      Navigator.pushNamed(context, '/profil');
                    })
              ]),
              Column(children: [
                IconButton(
                    icon: Icon(Icons.email),
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
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text(
            "Anda dapat menghubungi kami dengan mengirim pesan email atau melakukan panggilan melalui kontak yang telah disediakan",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          )
        ],
      )),
    );
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Setting'),
        ),
        body: new Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Center(
                  child: Text("Informations", style: TextStyle(color: Colors.black38, fontWeight: FontWeight.bold, fontSize: 25)),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                Padding(padding: EdgeInsets.all(10)),
                Text("     It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
                Padding(padding: EdgeInsets.all(10)),
                Text("     There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.")
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
