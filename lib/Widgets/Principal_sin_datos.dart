import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mecanicoapp/Screens/mainScreen.dart';
import 'package:mecanicoapp/Widgets/Calendar.dart';
import 'package:mecanicoapp/Widgets/Tabla_Principal.dart';

class Principal_sin_datos extends StatefulWidget {
  const Principal_sin_datos({super.key});

  @override
  State<Principal_sin_datos> createState() => _Principal_sin_datosState();
}

class _Principal_sin_datosState extends State<Principal_sin_datos> {
  @override
  Widget build(BuildContext context) {
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
          ), Container(
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
                        'No hay registros',
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 24),
                            
                      ),
                      
                    ],
                    
                  ),
                  ),
            SizedBox(height: 30,),
             Container(
child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Comience agregando uno',
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 16),
                            
                      ),
                      
                    ],
                    
                  ),
            ),
            SizedBox(height: 100,),
         FloatingActionButton(onPressed: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context)=>mainScreen()),
          );
         },
         backgroundColor: HexColor('#243447'),
         child: const Icon(Icons.navigation),
         ),
              
        ],
      ),
    );
  }
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
