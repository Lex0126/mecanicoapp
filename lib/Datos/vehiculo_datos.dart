import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class Vehiculo {
  @HiveField(0)
  String marca = '';
  @HiveField(1)
  String modelo = '';
  @HiveField(2)
  String year = '';
  @HiveField(3)
  String motor = '';
  @HiveField(4)
  String color = '';
  @HiveField(5)
  String vin = '';
  @HiveField(6)
  String kms = '';
  @HiveField(7)
  String placas = '';
  @HiveField(8)
  String servicio = '';
  @HiveField(9)
  String clientedatos = '';

  Vehiculo(
      {required this.marca,
      required this.modelo,
      required this.year,
      required this.motor,
      required this.color,
      required this.vin,
      required this.kms,
      required this.placas,
      required this.servicio,
      required this.clientedatos});

  Map<String, dynamic> toMap() {
    return {
      'marca': marca,
      'modelo': modelo,
      'year': year,
      'motor': motor,
      'color': color,
      'vin': vin,
      'kms': kms,
      'placas': placas,
      'servicio': servicio,
      'cliente datos': clientedatos
    };
  }

  @override
  String toString() {
    return 'Categorias{marca: $marca, modelo: $modelo, year: $year, motor: $motor, color: $color, vin: $vin, kms: $kms, placas: $placas, servicio: $servicio, cliente datos: $clientedatos}';
  }
}

class VehiculoAdapter extends TypeAdapter<Vehiculo> {
  @override
  Vehiculo read(BinaryReader reader) {
    return Vehiculo(
      marca: reader.read(),
      modelo: reader.read(),
      year: reader.read(),
      motor: reader.read(),
      color: reader.read(),
      vin: reader.read(),
      kms: reader.read(),
      placas: reader.read(),
      servicio: reader.read(),
      clientedatos: reader.read(),
    );
  }

  //Hay que cambiarlo para cada clase
  //En otras plabras esta clase producto
  //le toca el typeId 0
  //Si tienes Gato le toca el typeId 1
  //Si tienes Perro le toca el typeId 2
  //Si tienes Caballo le toca el typeId 3
  //...
  @override
  int get typeId => 1;

  @override
  void write(BinaryWriter writer, Vehiculo obj) {
    writer.write(obj.marca);
    writer.write(obj.modelo);
    writer.write(obj.year);
    writer.write(obj.motor);
    writer.write(obj.color);
    writer.write(obj.vin);
    writer.write(obj.kms);
    writer.write(obj.placas);
    writer.write(obj.servicio);
    writer.write(obj.clientedatos);
  }
}
