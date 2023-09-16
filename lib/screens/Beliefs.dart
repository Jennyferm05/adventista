import 'package:flutter/material.dart';

class BeliefsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creencias'),
      ),
      body: Center(
        child: BeliefsCard(),
      ),
    );
  }
}

class BeliefsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/creencias.png', // Reemplaza esto con la ruta de tu imagen
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment
                  .centerLeft, // Puedes ajustar la alineación según tus preferencias
              child: Text(
                'Los adventistas consideran toda la Santa Biblia como la segura y única regla de fe y esperanza.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify, // Alineación justificada
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment
                  .centerLeft, // Puedes ajustar la alineación según tus preferencias
              child: Text(
                'Sus doctrinas, por lo tanto, siguen integralmente las enseñanzas bíblicas y están basadas en ellas.Los Adventistas del Séptimo Día aceptan la Biblia como su único credo y sostienen creencias fundamentales basadas en las enseñanzas de las Sagradas Escrituras.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify, // Alineación justificada
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment
                  .centerLeft, // Puedes ajustar la alineación según tus preferencias
              child: Text(
                'Estas creencias, tal como se presentan aquí, constituyen la forma en que la iglesia comprende y expresa las enseñanzas de las Escrituras.',
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
