import 'package:bancoestadoqr/src/Widgets/Formulario.dart';
import 'package:flutter/material.dart';

class Validador extends StatelessWidget {
  const Validador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Validar usuario'),
          backgroundColor:
              Colors.amber[900], // Cambiar el color de fondo a naranja
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: const Formulario(),
      ),
    );
  }
}
