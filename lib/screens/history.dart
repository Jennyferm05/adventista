import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historia'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: HistoryCard(),
        ),
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/historia.png', // Reemplaza esto con la ruta de tu imagen
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'La División Sudamericana de la Iglesia Adventista del Séptimo Día (DSA) es una unidad administrativa de la Asociación General de la IASD, fundada en 1916. En la actualidad, comprende el territorio ocupado por ocho países: Argentina, Bolivia, Brasil, Chile, Ecuador, Paraguay, Perú y Uruguay. La historia de sus orígenes se desarrolla a partir de la siguiente cronología.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'El año 1890 marca la llegada de los adventistas del séptimo día a Sudamérica. Durante ese período, el mensaje adventista se esparció por medio de misioneros que habían venido de Norteamérica. Entre ellos, se destacaron Jorge y María Riffel, quienes aceptaron el mensaje adventista en 1888 en Estados Unidos. Convencidos de que debían compartir su nueva fe con los amigos de Argentina, los Riffel convencieron a tres familias alemanas para que se mudaran con ellos a la provincia de Entre Ríos, en el año 1890.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
