import 'package:adventista/screens/Beliefs.dart';
import 'package:adventista/screens/history.dart';
import 'package:adventista/screens/who_we_are.dart';
import 'package:flutter/material.dart';

class WePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nosotros'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 5.0), // Ajusta el margen superior aquí
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CardButton(
              title: 'Quienes Somos',
              imageAsset: 'assets/images/somos.png',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Who_we_arePage()),
                );
              },
            ),
            SizedBox(height: 20.0),
            CardButton(
              title: 'Historia',
              imageAsset: 'assets/images/historia.png',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryPage()),
                );
              },
            ),
            SizedBox(height: 20.0),
            CardButton(
              title: 'Creencias',
              imageAsset: 'assets/images/creencias.png',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BeliefsPage()),
                );
              },
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
            Container(
              margin:
                  EdgeInsets.only(top: 10.0), // Ajusta el margen superior aquí
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
