import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Clientes {
  @HiveField(0)
  String nombre = '';
  @HiveField(1)
  String domicilio = '';
  @HiveField(2)
  String ciudad = '';
  @HiveField(3)
  String telefono = '';

  Clientes(
      {required this.nombre,
      required this.domicilio,
      required this.ciudad,
      required this.telefono});

  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'domicilio': domicilio,
      'ciudad': ciudad,
      'telefono': telefono
    };
  }

  @override
  String toString() {
    return 'Categorias{nombre: $nombre, domicilio: $domicilio, ciudad: $ciudad,telefono: $telefono}';
  }
}

class ClientesAdapter extends TypeAdapter<Clientes> {
  @override
  Clientes read(BinaryReader reader) {
    return Clientes(
        nombre: reader.read(),
        domicilio: reader.read(),
        ciudad: reader.read(),
        telefono: reader.read());
  }

  //Hay que cambiarlo para cada clase
  //En otras plabras esta clase producto
  //le toca el typeId 0
  //Si tienes Gato le toca el typeId 1
  //Si tienes Perro le toca el typeId 2
  //Si tienes Caballo le toca el typeId 3
  //...
  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, Clientes obj) {
    writer.write(obj.nombre);
    writer.write(obj.domicilio);
    writer.write(obj.ciudad);
    writer.write(obj.telefono);
  }
}
