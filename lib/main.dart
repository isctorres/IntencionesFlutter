import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(new Intenciones());

class Intenciones extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IntencionesState();
  }
}

class IntencionesState extends State<Intenciones> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Intenciones',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        appBar: AppBar(
          title: Text('Práctica de Intenciones'),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                        border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.language, color: Colors.white)
                    ),
                  
                    title: Text(
                        "Abrir URL",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),

                    subtitle: Row(
                      children: <Widget>[
                        Icon(Icons.touch_app, color: Colors.yellowAccent),
                        Text("http://itcelaya.edu.mx", style: TextStyle(color: Colors.white))
                      ],
                    ),

                    trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                    onTap: () async {
                      const url = 'https://itcelaya.edu.mx';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        print("No se pudo lanzar");
                      }
                    },
                  ),
                ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.phone, color: Colors.white)
                  ),

                  title: Text(
                    "Llamada Telefónica",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text("Tel: 4610000000", style: TextStyle(color: Colors.white))
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: () async {
                    const url = 'tel:4615468324';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo llamar");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.message, color: Colors.white)
                  ),

                  title: Text(
                    "Enviar SMS",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text("Tel: 4610000000", style: TextStyle(color: Colors.white))
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: () async {
                    const url = 'sms:4615468324';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo lanzar");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.camera, color: Colors.white)
                  ),

                  title: Text(
                    "Tomar Foto",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text("Tomate una Selfie", style: TextStyle(color: Colors.white))
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: (){print("entro");},
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.email, color: Colors.white)
                  ),

                  title: Text(
                    "Enviar Email",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text("ruben.torres@itcelaya.edu.mx", style: TextStyle(color: Colors.white, fontSize: 12), )
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: (){print("entro");},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}