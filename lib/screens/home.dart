import 'package:adventista/screens/bookstore.dart';
import 'package:adventista/screens/contacts.dart';
import 'package:adventista/screens/developer.dart';
import 'package:adventista/screens/we.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Cerrar Sesión'),
                    content: Text('Sesión cerrada con éxito'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.popUntil(context, ModalRoute.withName('/'));
                          Navigator.pushNamed(context, 'login');
                        },
                        child: Text('Aceptar'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.only(top: 5.0), // Ajusta el margen superior aquí
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '¡Bienvenido!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardButton(
                    title: 'Nosotros',
                    imageAsset: 'assets/images/nosotros.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WePage()),
                      );
                    },
                  ),
                  CardButton(
                    title: 'IADPA',
                    imageAsset: 'assets/images/libros.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookstorePage()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardButton(
                    title: 'Contactos',
                    imageAsset: 'assets/images/contactos.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContactsPage()),
                      );
                    },
                  ),
                  CardButton(
                    title: 'Desarrolladores',
                    imageAsset: 'assets/images/desarrollo-web.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DeveloperPage()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardButton extends StatelessWidget {
  final String title;
  final String imageAsset;
  final VoidCallback onPressed;

  CardButton(
      {required this.title, required this.imageAsset, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onPressed,
        child: Column(
          children: [
            Image.asset(
              imageAsset,
              width: 150.0,
              height: 100.0,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}
