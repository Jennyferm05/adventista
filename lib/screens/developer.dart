import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Importa el paquete url_launcher

class DeveloperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desarrolladores'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 5.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CardButton(
              title: 'Jenifer Marin',
              imageAsset: 'assets/images/desarrolladora.png',
            ),
            SizedBox(height: 20.0),
            CardButtonWithLink(
              title: 'Iconos Flaticon',
              imageAsset: 'assets/images/iconos.png',
              link: 'https://www.flaticon.es',
            ),
            SizedBox(height: 20.0),
            CardButton(
              title: 'Imagenes',
              imageAsset: 'assets/images/logo.png',
            ),
          ]),
        ),
      ),
    );
  }
}

class CardButton extends StatelessWidget {
  final String title;
  final String imageAsset;

  CardButton({required this.title, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Image.asset(
              imageAsset,
              width: 250.0,
              height: 150.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}

class CardButtonWithLink extends StatelessWidget {
  final String title;
  final String imageAsset;
  final String link;

  CardButtonWithLink(
      {required this.title, required this.imageAsset, required this.link});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        // Abre el enlace cuando se hace clic en el widget
        if (await canLaunch(link)) {
          await launch(link);
        } else {
          throw 'No se pudo abrir el enlace $link';
        }
      },
      child: Card(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Image.asset(
                imageAsset,
                width: 250.0,
                height: 150.0,
              ),
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
