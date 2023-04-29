import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mecanicoapp/Datos/clientes_datos.dart';
import 'package:mecanicoapp/Datos/vehiculo_datos.dart';
import 'package:mecanicoapp/Screens/mainScreen.dart';
import 'package:mecanicoapp/Widgets/Principal_sin_datos.dart';
import 'package:mecanicoapp/Widgets/Tabla_Principal.dart';

void main() async {
  runApp(const MyApp());
  await Hive.initFlutter();
  Hive.openBox('cliente');
  Hive.openBox('vehiculo');
  Hive.registerAdapter(VehiculoAdapter());
  Hive.registerAdapter(ClientesAdapter());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Principal_sin_datos(),
    );
  }
}