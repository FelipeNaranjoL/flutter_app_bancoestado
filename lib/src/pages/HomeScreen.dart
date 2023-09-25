import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 231, 231, 231),
      child: Stack(
        children: [
          _ContenedorNaranjo(),
          _ContenedorBlanco(),
          _Elemento1(),
          _Elemento2(),
          _Elemento3(),
          _Elemento4(),
        ],
      ),
    );
  }

  Widget _Elemento1() {
    return Positioned(
        bottom: 35,
        right: 14,
        width: 90,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ));
  }

  Widget _Elemento2() {
    return Positioned(
        bottom: 35,
        left: 14,
        width: 90,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ));
  }

  Widget _Elemento3() {
    return Positioned(
        bottom: 35,
        left: 110,
        width: 90,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ));
  }

  Widget _Elemento4() {
    return Positioned(
        bottom: 35,
        left: 208,
        width: 90,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ));
  }

  Widget _ContenedorNaranjo() {
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
              onPressed: () {},
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
            onPressed: () {},
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
              onPressed: () {},
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
              color: Color.fromARGB(255, 231, 231, 231),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )),
        ));
  }
}
