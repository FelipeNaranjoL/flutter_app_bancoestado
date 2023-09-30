import 'package:bancoestadoqr/src/pages/QR.dart';
import 'package:bancoestadoqr/src/pages/QR1.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});
  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final GlobalKey<FormState> _formularioEstado = GlobalKey<FormState>();
  final TextEditingController _rutController = TextEditingController();
  var rut = MaskTextInputFormatter(
      mask: '##.###.###-#', filter: {"#": RegExp(r'[0-9kK]')});
  @override
  void dispose() {
    // Limpia el controlador cuando ya no se necesita
    _rutController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.scale(
          scale: 2.9, // Ajusta este valor para cambiar el tamaño de la imagen
          child: Image.asset(
            'assets/logobancoestado.png',
            width: 100, // Ancho deseado de la imagen
            height: 100, // Alto deseado de la imagen
          ),
        ),
        SizedBox(
          height: 20,
        ),
        _Formulario(),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
        _ejemplos(),
      ],
    );
  }

  Container _Formulario() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Form(
          key: _formularioEstado,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey),
                ),
                child: TextFormField(
                  controller: _rutController,
                  validator: (value) {
                    if (!value!.contains('21.037.795-6') &&
                        !value!.contains('21.037.795-k')) {
                      return 'Ingersa un rut valido';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  inputFormatters: [rut],
                  style: const TextStyle(fontSize: 22),
                  decoration: const InputDecoration(
                    hintText: 'EJ: 210377956',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width - 30,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formularioEstado.currentState!.validate()) {
                      String rutValue = _rutController.text;
                      if (rutValue.contains('21.037.795-6')) {
                        // Redirigir a la página A
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => QR()));
                      } else if (rutValue.contains('21.037.795-k')) {
                        // Redirigir a la página B
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => QR1()));
                      }
                    } else {
                      // Manejar el error de validación
                    }
                  },
                  child: Text(
                    'Verificar',
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.amber[900]),
                ),
              )
            ],
          )),
    );
  }

  Container _ejemplos() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Text(
            'ejemplo:21037795k',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'ejemplo:111111111',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  void _validarYRedirigir() {
    if (_formularioEstado.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => QR(),
        ),
      );
    }
  }
}
