import 'package:bancoestadoqr/src/pages/AgregarTne.dart';
import 'package:bancoestadoqr/src/pages/Validador.dart';
import 'package:flutter/material.dart';

class Opciones extends StatefulWidget {
  const Opciones({Key? key}) : super(key: key);

  @override
  _OpcionesState createState() => _OpcionesState();
}

class _OpcionesState extends State<Opciones> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Generar QR'),
          backgroundColor: Colors.amber[900],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 50), // Ajusta la cantidad de píxeles que desees
                  Text(
                    '¿Qué quieres hacer?',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15), // Separación de 15px
                  Container(
                    margin: const EdgeInsets.only(left: 45, right: 45, top: 30),
                    width: MediaQuery.of(context).size.width - 30,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AgregarTne()));
                      },
                      child: Text(
                        'Ingresar TNE',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                      style:
                          ElevatedButton.styleFrom(primary: Colors.amber[900]),
                    ),
                  ),
                  SizedBox(height: 15), // Separación de 15px
                  Container(
                    margin: const EdgeInsets.only(left: 45, right: 45, top: 20),
                    width: MediaQuery.of(context).size.width - 30,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Validador()));
                      },
                      child: Text(
                        'Generar código QR con RUT',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                      style:
                          ElevatedButton.styleFrom(primary: Colors.amber[900]),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 20, // Ajusta la posición vertical deseada
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                child: ElevatedButton(
                  onPressed: () {
                    // Mostrar un pop-up cuando se presiona el botón
                    _showCustomPopup();
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.amber[900]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.help_outline,
                        color: Colors.white, // Icono blanco
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Ayuda',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showCustomPopup() {
    // Puedes personalizar y mostrar tus propios pop-ups aquí
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.grey,
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: const Text(
                    'Consejos',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: const Text(
                  'Al ser una app personalizada, es importante que leas las instrucciones',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: SizedBox(),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      // Mostrar otro pop-up después de presionar "OK"
                      _showAnotherCustomPopup();
                    },
                    child: Text('Siguiente'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _showAnotherCustomPopup() {
    // Puedes personalizar y mostrar otro pop-up aquí
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.grey,
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: const Text(
                    'Ingresar TNE',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: const Text(
                  'Esta función te permite guardar en la memoria de la app tu TNE, lo que permitirá generar un código QR sin la necesidad de ingresar tu Rut.',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: SizedBox(),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _showAnotherCustomPopup2();
                    },
                    child: Text('Siguiente'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _showAnotherCustomPopup2() {
    // Puedes personalizar y mostrar otro pop-up aquí
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.grey,
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: const Text(
                    'Generar código QR con Rut',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: const Text(
                  'Esta función te permite ingresar tu Rut en caso de no tener guardada tu TNE en la app.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: SizedBox(),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Finalizar'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
