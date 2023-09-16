import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> addresses = [
      '22 Calle Segunda, Bogotá',
      '123 Calle Principal, Neiva',
      '456 Avenida Central, Medellín',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Contactos'),
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Imagen de la iglesia con borde
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Nombre de la iglesia
            Text(
              'Iglesia Adventista',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            // Información de la iglesia en un Card
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              elevation: 2, // Elevación del Card
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    // Lista de direcciones con ícono de ubicación
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: addresses.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: <Widget>[
                            Icon(Icons.location_on, color: Colors.red),
                            SizedBox(width: 5),
                            Text(
                              addresses[index],
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    SizedBox(height: 10),

                    // Número de teléfono y letrero de "Contáctanos"
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.phone, color: Colors.blue),
                        SizedBox(width: 10),
                        Text(
                          '+57 316 383 3743',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String phoneNumber = '+573163833743';
          String message =
              'Hola, quiero obtener información sobre la Iglesia Adventista';
          String encodedMessage = Uri.encodeComponent(message);
          String whatsappUrl =
              'https://wa.me/$phoneNumber?text=$encodedMessage';

          launch(whatsappUrl);
        },
        child: Icon(Icons.chat),
        backgroundColor: Colors.green,
      ),
    );
  }
}
