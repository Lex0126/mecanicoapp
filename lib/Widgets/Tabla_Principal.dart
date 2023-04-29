import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hive/hive.dart';
import 'package:mecanicoapp/Datos/vehiculo_datos.dart';
import 'package:mecanicoapp/Widgets/Calendar.dart';

class tabla_principal extends StatefulWidget {
  const tabla_principal({super.key});

  @override
  State<tabla_principal> createState() => _tabla_principalState();
}

class _tabla_principalState extends State<tabla_principal> {
  @override
  Widget build(BuildContext context) {
    Hive.openBox('vehiculo');
    var box = Hive.box('vehiculo');
    var list = box.values.toList();
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: <Widget>[
              Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: HexColor('#243447'),
                      borderRadius: BorderRadiusGeometry.lerp(
                          BorderRadius.vertical(bottom: Radius.circular(1000)),
                          BorderRadius.horizontal(
                            right: Radius.elliptical(30, 10),
                          ),
                          50)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        ' Autos en taller',
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 18),
                      ),
                    ],
                  )),
              SizedBox(
                width: 60,
              ),
              Calendar(),
              IconButton(
                  onPressed: () {
                    Vehiculo nuevo = Vehiculo(
                        marca: 'Toyota',
                        modelo: 'Tacoma',
                        year: '2019',
                        motor: 'V6',
                        color: 'Rojo',
                        vin: '91219210212',
                        kms: '80000',
                        placas: 'PGJMK3RT2',
                        servicio: 'COMPLETO',
                        clientedatos: 'VICTOR ALEJANDRO PEREZ CRISTINO');
                    var vehiculoBox = Hive.box('vehiculo');
                    vehiculoBox.add(nuevo);
                    setState(() {});
                    print(vehiculoBox.values.toString());
                  },
                  icon: Icon(Icons.home, color: Colors.white)),
            ],
          ),
          Table(
            border: TableBorder.all(width: 1, color: HexColor('#F2F2F2')),
            children: <TableRow>[
              TableRow(
                  decoration: BoxDecoration(
                    color: HexColor('#243447'),
                  ),
                  children: <Widget>[
                    textotabla('Fecha de entrega', 0),
                    textotabla('Auto', 8),
                    textotabla('Estado', 8)
                  ])
            ],
          ),
          Container(height: 300, child: datosTabla()),
          SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.bottomRight,
            height: 100,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: 120,
                    child: Text('Nuevo servicio',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(fontSize: 18)),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: HexColor('#4E6682')),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: 120,
                    child: Text(
                      'Nueva cita',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(fontSize: 18),
                    ),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: HexColor('#4E6682')),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget textotabla(String texto, double espaciado) {
    return Column(
      children: [
        SizedBox(
          height: espaciado,
        ),
        Text(texto,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                color: HexColor('#F2F2F2'),
                fontSize: 18,
                fontWeight: FontWeight.bold))
      ],
    );
  }

  Widget datosTabla() {
    Hive.openBox('vehiculo');
    var box = Hive.box('vehiculo');
    var list = box.values.toList();
    return ListView(
      children: list
          .map((vehiculo) => Container(
                child: Table(
                  border: TableBorder.all(color: Colors.white, width: 1),
                  children: <TableRow>[
                    TableRow(
                        decoration: BoxDecoration(color: HexColor('#243447')),
                        children: [
                          Container(
                            height: 100,
                            padding: EdgeInsets.fromLTRB(10, 10, 8, 0),
                            child: Text(
                              ' 10-06-2023',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 8, 0),
                            height: 100,
                            child: Text(vehiculo.marca + '-' + vehiculo.color,
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400)),
                          ),
                          Container(
                            height: 100,
                            padding: EdgeInsets.fromLTRB(10, 10, 8, 0),
                            child: Text('En reparacion',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400)),
                          ),
                        ])
                  ],
                ),
              ))
          .toList(),
    );
  }
}
