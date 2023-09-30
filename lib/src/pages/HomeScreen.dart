import 'package:flutter/material.dart';
import 'package:bancoestadoqr/src/pages/Validador.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 231, 231, 231),
      child: Stack(
        children: [
          _ContenedorNaranjo(context),
          _ContenedorBlanco(),
          _Elemento1(context),
          _Elemento2(context),
          _Elemento3(context),
          _Elemento4(context),
        ],
      ),
    );
  }

  Widget _Elemento1(context) {
    return Positioned(
      bottom:
          25, // Cambia esta cantidad para ajustar la posición vertical de la imagen
      right: 14,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                  contentPadding: EdgeInsets.zero,
                  content: Column(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                      color: Colors.grey,
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: const Text(
                          'Lo sentimos',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: const Text(
                        'Esta version de banco estado es una beta cerrada, hay funciones limitadas',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'))
                      ],
                    )
                  ]),
                );
              });
          // _mostrarAlerta(context);
          // Acción cuando se presione el botón
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, // Sin relleno en el botón
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Forma del botón
          ),
          primary: Colors.white, // Color de fondo blanco
        ),
        child: Container(
          width: 90, // Ancho deseado
          height: 115, // Alto deseado
          child: Stack(
            children: [
              Positioned(
                bottom: 25, // Ajusta esta cantidad para subir o bajar la imagen
                left: 0, // Posición izquierda
                right: 0, // Posición derecha
                top: 0, // Posición superior
                child: Transform.scale(
                  scale:
                      0.5, // Escala de la imagen (ajusta según sea necesario)
                  child: Image.asset(
                    'assets/exclamacion.png', // Ruta de la imagen
                    fit: BoxFit
                        .cover, // Ajusta la imagen al tamaño del contenedor
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 60), // Espacio para bajar el texto
                    Text(
                      'Emergencias y ayuda', // Texto deseado
                      textAlign: TextAlign.center, // Alineación al centro
                      style: TextStyle(
                        fontSize: 11, // Tamaño de fuente deseado
                        fontWeight: FontWeight.bold, // Opcional: peso de fuente
                        color: Colors.black, // Opcional: color de texto
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _Elemento2(context) {
    return Positioned(
      bottom:
          25, // Cambia esta cantidad para ajustar la posición vertical de la imagen
      left: 14,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Validador()));
          // Acción cuando se presione el botón
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, // Sin relleno en el botón
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Forma del botón
          ),
          primary: Colors.white, // Color de fondo blanco
        ),
        child: Container(
          width: 90, // Ancho deseado
          height: 115, // Alto deseado
          child: Stack(
            children: [
              Positioned(
                bottom: 25, // Ajusta esta cantidad para subir o bajar la imagen
                left: 0, // Posición izquierda
                right: 0, // Posición derecha
                top: 0, // Posición superior
                child: Transform.scale(
                  scale:
                      0.5, // Escala de la imagen (ajusta según sea necesario)
                  child: Image.asset(
                    'assets/logored.png', // Ruta de la imagen
                    fit: BoxFit
                        .cover, // Ajusta la imagen al tamaño del contenedor
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 60), // Espacio para bajar el texto
                    Text(
                      'Generar Pasaje QR', // Texto deseado
                      textAlign: TextAlign.center, // Alineación al centro
                      style: TextStyle(
                        fontSize: 11, // Tamaño de fuente deseado
                        fontWeight: FontWeight.bold, // Opcional: peso de fuente
                        color: Colors.black, // Opcional: color de texto
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _Elemento3(context) {
    return Positioned(
      bottom:
          25, // Cambia esta cantidad para ajustar la posición vertical de la imagen
      left: 110,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                  contentPadding: EdgeInsets.zero,
                  content: Column(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                      color: Colors.grey,
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: const Text(
                          'Lo sentimos',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: const Text(
                        'Esta version de banco estado es una beta cerrada, hay funciones limitadas',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'))
                      ],
                    )
                  ]),
                );
              });
          // Acción cuando se presione el botón
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, // Sin relleno en el botón
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Forma del botón
          ),
          primary: Colors.white, // Color de fondo blanco
        ),
        child: Container(
          width: 90, // Ancho deseado
          height: 115, // Alto deseado
          child: Stack(
            children: [
              Positioned(
                bottom: 25, // Ajusta esta cantidad para subir o bajar la imagen
                left: 0, // Posición izquierda
                right: 0, // Posición derecha
                top: 0, // Posición superior
                child: Transform.scale(
                  scale:
                      0.5, // Escala de la imagen (ajusta según sea necesario)
                  child: Image.asset(
                    'assets/QR.png', // Ruta de la imagen
                    fit: BoxFit
                        .cover, // Ajusta la imagen al tamaño del contenedor
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 60), // Espacio para bajar el texto
                    Text(
                      'Pagar o girar con QR', // Texto deseado
                      textAlign: TextAlign.center, // Alineación al centro
                      style: TextStyle(
                        fontSize: 12, // Tamaño de fuente deseado
                        fontWeight: FontWeight.bold, // Opcional: peso de fuente
                        color: Colors.black, // Opcional: color de texto
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _Elemento4(context) {
    return Positioned(
      bottom:
          25, // Cambia esta cantidad para ajustar la posición vertical de la imagen
      left: 208,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                  contentPadding: EdgeInsets.zero,
                  content: Column(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                      color: Colors.grey,
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: const Text(
                          'Lo sentimos',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: const Text(
                        'Esta version de banco estado es una beta cerrada, hay funciones limitadas',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'))
                      ],
                    )
                  ]),
                );
              });
          // Acción cuando se presione el botón
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, // Sin relleno en el botón
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Forma del botón
          ),
          primary: Colors.white, // Color de fondo blanco
        ),
        child: Container(
          width: 90, // Ancho deseado
          height: 115, // Alto deseado
          child: Stack(
            children: [
              Positioned(
                bottom: 25, // Ajusta esta cantidad para subir o bajar la imagen
                left: 0, // Posición izquierda
                right: 0, // Posición derecha
                top: 0, // Posición superior
                child: Transform.scale(
                  scale:
                      0.5, // Escala de la imagen (ajusta según sea necesario)
                  child: Image.asset(
                    'assets/ubicacion.png', // Ruta de la imagen
                    fit: BoxFit
                        .cover, // Ajusta la imagen al tamaño del contenedor
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 60), // Espacio para bajar el texto
                    Text(
                      'Bus, tren y transfer', // Texto deseado
                      textAlign: TextAlign.center, // Alineación al centro
                      style: TextStyle(
                        fontSize: 11, // Tamaño de fuente deseado
                        fontWeight: FontWeight.bold, // Opcional: peso de fuente
                        color: Colors.black, // Opcional: color de texto
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ContenedorNaranjo(context) {
    return Positioned(
        child: Container(
      height: 660,
      decoration: BoxDecoration(color: Colors.amber[900]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 70),
            child: Row(
              children: [
                Expanded(child: Container()),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Container(
            width: 200,
            height: 100,
            child: Image(image: AssetImage('assets/logobancoestado.png')),
          ),
          Text(
            'Hola Usuario(a)',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 50,
          ),
          FilledButton.icon(
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        contentPadding: EdgeInsets.zero,
                        content:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Container(
                            color: Colors.grey,
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: const Text(
                                'Lo sentimos',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(32),
                            child: const Text(
                              'Esta version de banco estado es una beta cerrada, hay funciones limitadas',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('OK'))
                            ],
                          )
                        ]),
                      );
                    });
              },
              icon: const Icon(
                Icons.fingerprint,
                size: 44,
              ),
              label: const Text('Ingresar'),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  foregroundColor: MaterialStatePropertyAll(Colors.amber[900]),
                  iconSize: MaterialStatePropertyAll(44),
                  textStyle: MaterialStatePropertyAll(
                      TextStyle(fontSize: 34, fontWeight: FontWeight.w400)),
                  padding: MaterialStatePropertyAll(EdgeInsets.only(
                      left: 20, right: 70, top: 15, bottom: 15)))),
          const SizedBox(
            height: 35,
          ),
          TextButton(
            onPressed: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      content:
                          Column(mainAxisSize: MainAxisSize.min, children: [
                        Container(
                          color: Colors.grey,
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: const Text(
                              'Lo sentimos',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(32),
                          child: const Text(
                            'Esta version de banco estado es una beta cerrada, hay funciones limitadas',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('OK'))
                          ],
                        )
                      ]),
                    );
                  });
            },
            child: const Text(
              'Ingresar con tu clave',
              style: TextStyle(fontSize: 25),
            ),
            style: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.white)),
          ),
          const SizedBox(
            height: 50,
          ),
          FilledButton.icon(
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        contentPadding: EdgeInsets.zero,
                        content:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Container(
                            color: Colors.grey,
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: const Text(
                                'Lo sentimos',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(32),
                            child: const Text(
                              'Esta version de banco estado es una beta cerrada, hay funciones limitadas',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('OK'))
                            ],
                          )
                        ]),
                      );
                    });
              },
              icon: const Icon(Icons.lock),
              label: const Text('BE Pass: Autoriza tus operaciones >'),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                  textStyle:
                      MaterialStatePropertyAll(TextStyle(fontSize: 18)))),
        ],
      ),
    ));
  }

  Widget _ContenedorBlanco() {
    return Positioned(
        bottom: 5,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Accesos rápidos',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      decoration: TextDecoration.none),
                )
              ],
            ),
          ),
          height: 170,
          width: 413,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 221, 221),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )),
        ));
  }
}
