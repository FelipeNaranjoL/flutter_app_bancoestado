import 'package:bancoestadoqr/src/pages/Opciones.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _checkIfPopupShown();
  }

  Future<void> _checkIfPopupShown() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool popupShown = prefs.getBool('popupShown') ?? false;

    if (!popupShown) {
      // Si el pop-up no se ha mostrado, muéstralo
      _showPopup();

      // Marcar el pop-up como mostrado
      prefs.setBool('popupShown', true);
    }
  }

  void _showPopup() {
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
                    'Bienvenido',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: const Text(
                  'Recuerda que esta app fue creada con fines educativos. Te presento a Banco Estado QR, una app donde puedes generar un código QR dependiendo si eres un estudiante o un adulto te invito a presionar el botón "Generar Pasaje QR" para poder mostrarte las novedades',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('OK'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 231, 231, 231),
      child: Stack(
        children: [
          _ContenedorNaranjo2(context),
          _ContenedorBlanco2(context),
        ],
      ),
    );
  }

  Widget _ContenedorNaranjo2(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      width: screenWidth,
      height: screenHeight * 0.78,
      color: Colors.orange,
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
            height: 30,
          ),
          Row(
            children: [
              SizedBox(width: screenWidth * 0.26),
              TextButton(
                onPressed: () {
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
                                child: Text(
                                  'Lo sentimos',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(32),
                              child: Text(
                                'Esta versión de Banco Estado es una beta cerrada, hay funciones limitadas',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                      side: BorderSide(color: Colors.orange),
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.lock,
                      size: 40,
                      color: Colors.black,
                    ),
                    Text(
                      'BE Pass',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16), // Espacio entre los botones
              TextButton(
                onPressed: () {
                  // Agrega aquí la acción para el segundo botón
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                      side: BorderSide(color: Colors.orange),
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.qr_code,
                      size: 40,
                      color: Colors.black,
                    ),
                    Text(
                      'QR Fast',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _ContenedorBlanco2(context) {
    return Container(
      width: double.infinity, // Para que cubra todo el ancho
      alignment: Alignment.bottomCenter, // Para que esté en la parte inferior
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Para espaciar los elementos
        children: [
          _buildButtonContainer1(
            context,
            Colors.white,
            'assets/logored.png',
            'Generar Pasaje QR',
          ),
          _buildButtonContainer(
            context,
            Colors.white,
            'assets/QR.png',
            'Pagar o Girar con QR',
          ),
          _buildButtonContainer(
            context,
            Colors.white,
            'assets/ubicacion.png',
            'Bus, tren y transfer',
          ),
          _buildButtonContainer(
            context,
            Colors.white,
            'assets/exclamacion.png',
            'Emergencias y ayuda',
          ),
        ],
      ),
    );
  }

  Widget _buildButtonContainer(
      BuildContext context, Color color, String imagePath, String buttonText) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      color: color,
      height: 190, // Ajusta la altura según tus necesidades
      padding: EdgeInsets.all(0), // Padding de 5 en todos los lados
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
                        'Esta versión de Banco Estado es una beta cerrada, hay funciones limitadas',
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
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, // Sin relleno en el botón
          primary: Colors.transparent, // Fondo transparente
          shadowColor: Colors.transparent, // Sin sombras
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // Bordes cero
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 70, // Ajusta el ancho de la imagen
              height: 60, // Ajusta la altura de la imagen
            ),
            SizedBox(height: 10),
            Text(
              buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15, // Tamaño de fuente del texto
                color: Colors.black, // Color del texto
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonContainer1(
      BuildContext context, Color color, String imagePath, String buttonText) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      color: color,
      height: 190, // Ajusta la altura según tus necesidades
      padding: EdgeInsets.all(0), // Padding de 5 en todos los lados
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Opciones()));
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, // Sin relleno en el botón
          primary: Colors.transparent, // Fondo transparente
          shadowColor: Colors.transparent, // Sin sombras
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // Bordes cero
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 70, // Ajusta el ancho de la imagen
              height: 60, // Ajusta la altura de la imagen
            ),
            SizedBox(height: 10),
            Text(
              buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15, // Tamaño de fuente del texto
                color: Colors.black,
                // Color del texto
              ),
            ),
          ],
        ),
      ),
    );
  }
}
