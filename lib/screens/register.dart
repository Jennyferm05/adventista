import 'package:adventista/models/database_helper.dart';
import 'package:adventista/screens/login.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _dataTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  Future<void> _registerUser() async {
    final data = _dataTextController.text;
    final username = _userNameTextController.text;
    final password = _passwordTextController.text;

    if (data.isEmpty || username.isEmpty || password.isEmpty) {
      return;
    }

    final db = await DatabaseProvider.instance.database;
    final success = await db.insert(
      'users',
      {
        'data': data,
        'username': username,
        'password': password,
      },
    );

    if (success != null && success > 0) {
      _showDialog(
          'Registro Exitoso', 'El registro se ha completado exitosamente.');
      Future.delayed(Duration(seconds: 2), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      });
    } else {
      _showDialog('Error', 'No se pudo guardar la información del usuario.');
    }
  }

  void _showDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrarse'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', width: 150, height: 150),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                controller: _dataTextController,
                decoration: InputDecoration(labelText: 'Nombres'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                controller: _userNameTextController,
                decoration: InputDecoration(labelText: 'Usuario'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                controller: _passwordTextController,
                decoration: InputDecoration(labelText: 'Contraseña'),
                obscureText: true,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _registerUser,
              child: Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}
