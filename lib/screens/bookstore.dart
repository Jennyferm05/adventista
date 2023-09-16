import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Importa el paquete para abrir enlaces web

class BookstorePage extends StatelessWidget {
  // Función para abrir el enlace cuando se presiona el botón
  _launchURL() async {
    const url = 'https://iadpa.org'; // URL del enlace
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Libreria'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BookstoreCard(),
              SizedBox(height: 16.0), // Agregar espacio entre las tarjetas
              BookstoreGrid(), // Agregar el nuevo grid de tarjetas
              SizedBox(
                  height: 16.0), // Agregar espacio entre el grid y el botón
              ElevatedButton(
                onPressed:
                    _launchURL, // Llamar a la función para abrir el enlace
                child: Text('More'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BookstoreCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/libreria.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Somos una organización Adventista que provee libros, revistas y otros materiales con el fin de proclamar el evangelio para la segunda venida de Jesús.',
              style: TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

class BookstoreGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // 2 columns
      shrinkWrap:
          true, // Allow the GridView to scroll within a SingleChildScrollView
      physics:
          NeverScrollableScrollPhysics(), // Disable GridView's scroll behavior
      children: [
        BookstoreCardWithImage('assets/images/libro1.png'),
        BookstoreCardWithImage('assets/images/libro2.png'),
        BookstoreCardWithImage('assets/images/libro3.png'),
        BookstoreCardWithImage('assets/images/libro4.png'),
      ],
    );
  }
}

class BookstoreCardWithImage extends StatelessWidget {
  final String imagePath;

  BookstoreCardWithImage(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 16 /
            9, // Puedes ajustar esta relación de aspecto según tus necesidades
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
