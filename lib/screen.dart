import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Belajar Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonTheme(
              minWidth: 200,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                color: Colors.black,
                child: Text(
                  'Tap Untuk ke AboutPage',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 35.0),
            ),
            ButtonTheme(
              minWidth: 200,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/portofolio');
                },
                color: Colors.black,
                child: Text(
                  'Tap Halaman Portofolio',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 35.0),
            ),
            ButtonTheme(
              minWidth: 200,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contact');
                },
                color: Colors.black,
                child: Text(
                  'Tap Halaman Contact',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            )
          ],
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
    final List<String> sub = [
      'Nadia 1',
      'Nadia 2',
      'Nadia 3',
      'Nadia 4',
      'Nadia 5',
      'Nadia 6',
      'Nadia 7',
      'Nadia 8',
      'Nadia 9',
      'Nadia 10',
      'Nadia 11'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: sub.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(sub[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          );
        },
      ),
    );
  }
}
