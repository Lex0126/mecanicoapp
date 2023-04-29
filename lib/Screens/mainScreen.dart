import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hive/hive.dart';
import 'package:mecanicoapp/Widgets/Tabla_Principal.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  final TextEditingController nombre = TextEditingController();
  final TextEditingController domicilio = TextEditingController();
  final TextEditingController ciudad = TextEditingController();
  final TextEditingController telefono = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Hive.openBox('vehiculo');
    return Scaffold(
      backgroundColor: HexColor('#141d26'),
      appBar: AppBar(
        backgroundColor: HexColor('#243447'),
        title: Text('AUTOMOTRIZ MARTINEZ'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom:
                  Radius.elliptical(MediaQuery.of(context).size.width, 30.0)),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          VerificacionSiExistenDatos()
        ],
      ),
    );
  }

  Widget VerificacionSiExistenDatos() {
    var box = Hive.box('vehiculo');
    var verification = box.get('vehiculo');
    if (verification != null) {
      return tabla_principal();
    } else {
      return tabla_principal();
    }
  }

  Widget textos(
      TextEditingController controlador, double espaciado, String texto) {
    return Expanded(
        child: Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          texto,
          style:
              GoogleFonts.montserrat(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: espaciado,
        ),
        Container(
          width: 200,
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: HexColor('#C8D0D8'),
                filled: true),
            controller: controlador,
          ),
        ),
      ],
    ));
  }
}
