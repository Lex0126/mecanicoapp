import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mecanicoapp/Datos/checkboxstate.dart';

class llenado extends StatefulWidget{
  const llenado({super.key});

  @override
  State<llenado> createState() => _llenado();

}
class _llenado extends State<llenado>{
final controller=ScrollController();
final itemKey= GlobalKey();
final itemkeyfre=GlobalKey();
final itemKeysusp= GlobalKey();
final itemKeyHidraulica= GlobalKey();
final itemKeyMotor= GlobalKey();
final itemKeyEnfriamento= GlobalKey();

Future scrollToitem() async{
  final context = itemKey.currentContext!;
  await Scrollable.ensureVisible(context);
}
Future scrollToitemfre() async{
  final context = itemkeyfre.currentContext!;
  await Scrollable.ensureVisible(context);
}
Future scrollToitemsusp() async{
  final context = itemKeysusp.currentContext!;
  await Scrollable.ensureVisible(context);
}
Future scrollToitemhidraulica() async{
  final context = itemKeyHidraulica.currentContext!;
  await Scrollable.ensureVisible(context);
}
Future scrollToitemmotor() async{
  final context = itemKeyMotor.currentContext!;
  await Scrollable.ensureVisible(context);
}
Future scrollToitemenfria() async{
  final context = itemKeyEnfriamento.currentContext!;
  await Scrollable.ensureVisible(context);
}
  final bujias={
    checkboxstate(title: '4',),
    checkboxstate(title: '6'),
    checkboxstate(title: '8')
  };
  final filtro={
    checkboxstate(title: 'Aire',),
    checkboxstate(title: 'Aceite'),
    checkboxstate(title: 'Gasolina')
  };
   final aceite={
    checkboxstate(title: '4',),
    checkboxstate(title: '5'),
    checkboxstate(title: '6')
  };
  final carblcables={
    checkboxstate(title: 'Carbln',),
    checkboxstate(title: 'Cables'),
  };
  final liq={
    checkboxstate(title: 'Liq.inj',),
    checkboxstate(title: 'Tapa/Dist'),
  };
  final PCV={
    checkboxstate(title: 'PCV',),
    checkboxstate(title: 'Rotor'),
  };
  final anticog={
    checkboxstate(title: 'Anticogelante',),
    checkboxstate(title: 'Aceite Dir.Hidraulica'),
    checkboxstate(title: 'Aceite De transmision'),
  };
  /////
  final BALA={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No'),
    checkboxstate(title: '1/4'),
    checkboxstate(title: '2/4'),
    checkboxstate(title: '3/4'),
  };
  final ZAPA={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No'),
    checkboxstate(title: '1/4'),
    checkboxstate(title: '2/4'),
    checkboxstate(title: '3/4'),
  };
  final DISC={
    checkboxstate(title: 'Disco',),
    checkboxstate(title: 'Retificacion'),
    checkboxstate(title: 'IZQ'),
    checkboxstate(title: 'DER'),
  };
  final TAMBOR={
    checkboxstate(title: 'Disco',),
    checkboxstate(title: 'Retificacion'),
    checkboxstate(title: 'Tambor'),
    checkboxstate(title: 'IZQ'),
    checkboxstate(title: 'DER'),
  };
   final Caliper={
    checkboxstate(title: 'Caliper',),
    checkboxstate(title: 'Goteo'),
    checkboxstate(title: 'Normal'),
    checkboxstate(title: 'IZQ'),
    checkboxstate(title: 'DER'),
  };
  final Calipercilin={
    checkboxstate(title: 'Caliper',),
    checkboxstate(title: 'Cilindro',),
    checkboxstate(title: 'Goteo'),
    checkboxstate(title: 'Normal'),
    checkboxstate(title: 'IZQ'),
    checkboxstate(title: 'DER'),
  };
  final Terminalinte={
    checkboxstate(title: 'IZQ',),
    checkboxstate(title: 'DER',),
   
  };
  final Terminalexte={
    checkboxstate(title: 'IZQ',),
    checkboxstate(title: 'DER',),
   
  };
   final Rotulainfe={
    checkboxstate(title: 'IZQ',),
    checkboxstate(title: 'DER',),
   
  };
   final Rotulasuper={
    checkboxstate(title: 'IZQ',),
    checkboxstate(title: 'DER',),
   
  };
  final Amortdel={
    checkboxstate(title: 'IZQ',),
    checkboxstate(title: 'DER',),
   
  };
  final Amorttras={
    checkboxstate(title: 'IZQ',),
    checkboxstate(title: 'DER',),
   
  };
   final Huelesbarra={
    checkboxstate(title: 'IZQ',),
    checkboxstate(title: 'DER',),
   
  };
   final Tornillos={
    checkboxstate(title: 'IZQ',),
    checkboxstate(title: 'DER',),
   
  };
  final Horquillas={
    checkboxstate(title: 'IZQ',),
    checkboxstate(title: 'DER',),
   
  };
  final Bujeshorq={
    checkboxstate(title: 'IZQ',),
    checkboxstate(title: 'DER',),
   
  };
  final fuga={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
   
  };
   final ruido={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
   
  };
  final mangerarota={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
   
  };
   final fugaaceite={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
   
  };
  final mangerarotaret={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
   
  };
   final fugaaceiteret={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
   
  };
  final cremadire={
    checkboxstate(title: 'Izq',),
    checkboxstate(title: 'Der',),
   
  };
  final bandalt={
    checkboxstate(title: 'Tostada',),
    checkboxstate(title: 'Chilla',),
    checkboxstate(title: 'Rota',),
   
  };
  final pol={
    checkboxstate(title: 'Polea Tensora',),
    checkboxstate(title: 'Polea Loca',),
   
  };
  final bomba={
    checkboxstate(title: 'Gotea',),
    checkboxstate(title: 'Chilla',),
    checkboxstate(title: 'Fan clutch',),
   
  };
   final bombaaceite={
    checkboxstate(title: 'Normal',),
    checkboxstate(title: 'Alta',),
    checkboxstate(title: 'Baja',),
   
  };
  final punteriastap={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
  };
   final tap={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
  };
  final Mono={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
  };
  final CadenaTiem={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
  };
    final Reten={
    checkboxstate(title: 'Del',),
    checkboxstate(title: 'Tras',),
    
  };
  final Retengot={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
    
  };
  final Retenlevas={
    checkboxstate(title: 'Del',),
    checkboxstate(title: 'Tras',),
    
  };
  final Retengotlevas={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
    
  };
  final radiador={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
    checkboxstate(title: 'Anticongelante',),
    checkboxstate(title: 'Agua',),
    
  };
 final bombaagua={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
    
  };
   final termostato={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
    
  };
   final Mangueras={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
    
  };
   final tapon={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
    
  };
   final abrazaderas={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
    
  };
   final deposito={
    checkboxstate(title: 'Si',),
    checkboxstate(title: 'No',),
    
  };

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
      body: Buildlist(),
      floatingActionButton: SpeedDial(
         backgroundColor: HexColor('#243447'),
        overlayOpacity: 0.6,
       animatedIcon: AnimatedIcons.menu_close,
       children: [
        SpeedDialChild(
          backgroundColor: HexColor('#243447'),
          labelBackgroundColor: HexColor('#243447'),
          labelStyle: TextStyle(color: Colors.white,fontSize: 20),
          label: "Sistema de enfriamento",
          child: Icon(Icons.car_crash,color:Colors.white),
          onTap: scrollToitemenfria
        ),
        SpeedDialChild(
          backgroundColor: HexColor('#243447'),
          labelBackgroundColor: HexColor('#243447'),
          labelStyle: TextStyle(color: Colors.white,fontSize: 20),
          label: "Motor",
          child: Icon(Icons.car_repair,color: Colors.white),
          onTap: scrollToitemmotor
        ),
        SpeedDialChild(
          backgroundColor: HexColor('#243447'),
          labelBackgroundColor: HexColor('#243447'),
          labelStyle: TextStyle(color: Colors.white,fontSize: 20),
          label: "Servicio de direccion hidraulica",
          child: Icon(Icons.motorcycle,color: Colors.white),
          onTap: scrollToitemhidraulica
          
        ),
        SpeedDialChild(
          backgroundColor: HexColor('#243447'),
          labelBackgroundColor: HexColor('#243447'),
          labelStyle: TextStyle(color: Colors.white,fontSize: 20),
          label: "Servicio de suspencion",
          child: Icon(Icons.car_rental,color: Colors.white,),
          onTap: scrollToitemsusp
        ),
        SpeedDialChild(
          backgroundColor: HexColor('#243447'),
          labelBackgroundColor: HexColor('#243447'),
          labelStyle: TextStyle(color: Colors.white,fontSize: 20),
          label: "Servicio de frenos",
          child: Icon(Icons.car_rental,color: Colors.white),
          onTap: scrollToitemfre
        ),
        SpeedDialChild(
          backgroundColor: HexColor('#243447'),
          labelBackgroundColor: HexColor('#243447'),
          labelStyle: TextStyle(color: Colors.white,fontSize: 20),
          label: "Afinacion Mayor",
          child: Icon(Icons.car_rental,color: Colors.white,),
          onTap: scrollToitem
        ),
        
       ],
      ),
      
      
   );
  
  }
Widget buildSinglecheckbox(checkboxstate checkbox)=>CheckboxListTile(
        side: BorderSide(width: 2,color: Colors.white),
        checkColor: Colors.white,
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Colors.green,
        value: checkbox.value,
        title: Text(checkbox.title,style: TextStyle(fontSize: 20,color: Colors.white),
        ),
        onChanged: (value)=>setState(()=>checkbox.value=value!),);
        

        Widget Textos(String texto, double tam){
          return Text(texto,
          style: TextStyle(fontSize: tam,color: Colors.white),
          );
        }
        Widget Buildlist()=>SingleChildScrollView(
          controller: controller,
child: Column(
  children: [
    Container(
      child: Column(key: itemKey,
        children: [
          Textos('Afinacion Mayor', 30),
          Divider(color: Colors.white,),
          Textos('Cambio de bujias', 20),
          ...bujias.map(buildSinglecheckbox).toList(),
          Divider(color: Colors.white,),
          Textos('Cambio de filtro', 20),
           ...filtro.map(buildSinglecheckbox).toList(),
           Divider(color: Colors.white,),
          Textos('Cambio de aceite', 20),
           ...aceite.map(buildSinglecheckbox).toList(),
           Divider(color: Colors.white,),
          Textos('', 20),
          ...carblcables.map(buildSinglecheckbox).toList(),
          Divider(color: Colors.white,),
          Textos('', 20),
          ...liq.map(buildSinglecheckbox).toList(),
          Divider(color: Colors.white,),
          Textos('', 20),
          ...PCV.map(buildSinglecheckbox).toList(),
          Divider(color: Colors.white,),
          Textos('', 20),
          ...anticog.map(buildSinglecheckbox).toList(),
          Divider(color: Colors.white,),



        ],
      ),
    ),
    Container(
      child: Column(key: itemkeyfre,
        children: [
          Textos('Servicio de frenos', 30),
             Divider(color:Colors.white,),
             Textos('Balatas delanteras', 20),
            ...BALA.map(buildSinglecheckbox).toList(),
             Divider(color:Colors.white,),
             Textos('Balatas Traseras(Zapatas)', 20),
             ...ZAPA.map(buildSinglecheckbox).toList(),
             Divider(color:Colors.white,),
              Textos('', 20),
             ...DISC.map(buildSinglecheckbox).toList(),
             Divider(color:Colors.white,),
              Textos('', 20),
             ...TAMBOR.map(buildSinglecheckbox).toList(),
             Divider(color:Colors.white,),
              Textos('', 20),
             ...Caliper.map(buildSinglecheckbox).toList(),
             Divider(color:Colors.white,),
              Textos('', 20),
             ...Calipercilin.map(buildSinglecheckbox).toList(),
              Divider(color:Colors.white,),
        ],
      ),
    ),
    Container(
      child: Column(key: itemKeysusp,
        children: [
          Textos('Servicio de suspension', 30),
             Divider(color:Colors.white,),
              Textos('Terminal interior', 20),
              ...Terminalinte.map(buildSinglecheckbox).toList(),
               Textos('Terminal exterior', 20),
              ...Terminalinte.map(buildSinglecheckbox).toList(),
               Textos('Rotula inferior', 20),
              ...Rotulainfe.map(buildSinglecheckbox).toList(),
               Textos('Rotula superior', 20),
              ...Rotulasuper.map(buildSinglecheckbox).toList(),
               Divider(color:Colors.white,),
                   Textos('Amortiguadores delanteros', 20),
              ...Amortdel.map(buildSinglecheckbox).toList(),
               Textos('Amortiguadores traseros', 20),
              ...Amorttras.map(buildSinglecheckbox).toList(),
               Textos('Hules de Barra Est.', 20),
              ...Huelesbarra.map(buildSinglecheckbox).toList(),
               Textos('Tornillos de la Barra Est.', 20),
              ...Tornillos.map(buildSinglecheckbox).toList(),
                Textos('Horquillas', 20),
              ...Horquillas.map(buildSinglecheckbox).toList(),
                Textos('Bujes de Horquilla', 20),
                ...Bujeshorq.map(buildSinglecheckbox).toList(),
                 Divider(color:Colors.white,),
        ],
      ),
    ),
 Container(
  child: Column(key: itemKeyHidraulica,
    children: [
Textos('Servicio de direccion hidraulica', 30),
                 Divider(color:Colors.white,),
                 Textos('Fuga', 20),
                 ...fuga.map(buildSinglecheckbox).toList(),
                 Textos('Con ruido', 20),
                 ...ruido.map(buildSinglecheckbox).toList(),
                  Divider(color:Colors.white,),
                  Textos('Linea de alta presion', 25),
                   Textos('Mangera rota', 20),
                   ...mangerarota.map(buildSinglecheckbox).toList(),
                    Textos('Con fuga de aceite', 20),
                   ...fugaaceite.map(buildSinglecheckbox).toList(),
                   Divider(color:Colors.white,),
                  Textos('Linea de retorno', 25),
                   Textos('Mangera rota', 20),
                   ...mangerarotaret.map(buildSinglecheckbox).toList(),
                    Textos('Con fuga de aceite', 20),
                   ...fugaaceiteret.map(buildSinglecheckbox).toList(),
                   Divider(color:Colors.white,),
                  Textos('Cremallera de la direccion', 25),
                   ...mangerarotaret.map(buildSinglecheckbox).toList(),
                    Divider(color:Colors.white,),
    ],
  ),
 ),
 Container(
  child: Column(key: itemKeyMotor,
    children: [
Textos('Motor', 30),
Divider(color:Colors.white,),
Textos('Banda de alternador', 20),
                 ...bandalt.map(buildSinglecheckbox).toList(),
                 Divider(color:Colors.white,),
                 ...pol.map(buildSinglecheckbox).toList(),
                  Divider(color:Colors.white,),
                 Textos('Bomba de agua', 20),
                 ...bomba.map(buildSinglecheckbox).toList(),
                  Divider(color:Colors.white,),
                 Textos('Presion Bomba de aceite', 20),
                 ...bombaaceite.map(buildSinglecheckbox).toList(),
                  Divider(color:Colors.white,),
                 Textos('Presion Bomba de aceite', 20),
                 ...bombaaceite.map(buildSinglecheckbox).toList(),
                 Divider(color:Colors.white,),
                 Textos('Tapa de punterias(goteo)', 20),
                 ...punteriastap.map(buildSinglecheckbox).toList(),
                  Divider(color:Colors.white,),
                 Textos('Tapa del carter(goteo)', 20),
                 ...tap.map(buildSinglecheckbox).toList(),
                 Divider(color:Colors.white,),
                 Textos('Registros de Monoblock(goteo)', 20),
                 ...Mono.map(buildSinglecheckbox).toList(),
                 Divider(color:Colors.white,),
                 Textos('Cadena de tiempo(suena)', 20),
                 ...CadenaTiem.map(buildSinglecheckbox).toList(),
                  Divider(color:Colors.white,),
                 Textos('Reten de cigueñal', 20),
                 ...Reten.map(buildSinglecheckbox).toList(),
                 Textos('Goteo', 20),
                 ...Retengot.map(buildSinglecheckbox).toList(),
                 Divider(color:Colors.white,),
                 Textos('Reten de arbol de levas', 20),
                 ...Retenlevas.map(buildSinglecheckbox).toList(),
                 Textos('Goteo', 20),
                 ...Retengotlevas.map(buildSinglecheckbox).toList(),
                     Divider(color:Colors.white,),
    ],
  ),
 ),
Container(
  child: Column(key: itemKeyEnfriamento,
    children: [
Textos('Sistema de enfriamiento', 30),
                 Divider(color:Colors.white,),
                 Textos('Radiador tapado', 20),
                  ...radiador.map(buildSinglecheckbox).toList(),
                  Divider(color:Colors.white,),
                 Textos('Bomba de agua(fuga)', 20),
                  ...bombaagua.map(buildSinglecheckbox).toList(),
                   Divider(color:Colors.white,),
                 Textos('Termostato', 20),
                  ...termostato.map(buildSinglecheckbox).toList(),
                   Divider(color:Colors.white,),
                 Textos('Mangueras(rotas)', 20),
                  ...Mangueras.map(buildSinglecheckbox).toList(),
                   Divider(color:Colors.white,),
                 Textos('Tapon(fuga)', 20),
                  ...tapon.map(buildSinglecheckbox).toList(),
                   Divider(color:Colors.white,),
                 Textos('abrazaderas(rotas)', 20),
                  ...abrazaderas.map(buildSinglecheckbox).toList(),
                   Divider(color:Colors.white,),
                 Textos('Deposito(roto)', 20),
                  ...deposito.map(buildSinglecheckbox).toList(),
    ],
  ),
), 
             
],
),
        );
}