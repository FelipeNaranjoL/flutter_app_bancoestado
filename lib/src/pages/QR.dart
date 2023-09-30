import 'package:flutter/material.dart';

class QR extends StatelessWidget {
  const QR({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('QR Estudiante'),
          backgroundColor: Colors.amber[900],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          // Envuelve el contenido en un SingleChildScrollView
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                // Imagen
                Image.asset(
                  'assets/QR.png',
                  width: MediaQuery.of(context).size.width - 30,
                  height: 200,
                ),
                const SizedBox(
                  height: 100,
                ),

                // Contenedor con tres textos
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Estudiante: Felipe Naranjo',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Saldo actual: \$5000',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Saldo después de usar el QR (-\$220): \$4780',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
