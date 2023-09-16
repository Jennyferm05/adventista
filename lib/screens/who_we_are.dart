import 'package:flutter/material.dart';

class Who_we_arePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiénes Somos'),
      ),
      body: Center(
        child: WhoWeAreCard(),
      ),
    );
  }
}

class WhoWeAreCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/somos.png', // Reemplaza esto con la ruta de tu imagen
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment
                  .centerLeft, // Puedes ajustar la alineación según tus preferencias
              child: Text(
                'Los adventistas del séptimo día, con más de 21.9 millones de miembros en todo el mundo, es una iglesia cristiana protestante organizada en 1863 en los Estados Unidos. Esta se origina por el movimiento liderado por Guillermo Miller, quien hizo hincapié en la necesidad de predicar sobre el pronto regreso de Jesucristo a este mundo. La sede sudamericana de la Iglesia Adventista del Séptimo Día, es responsable de la coordinación administrativa en ocho países con más de dos millones de miembros.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify, // Alineación justificada
              ),
            ),
          ),
        ],
      ),
    );
  }
}
