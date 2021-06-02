import 'package:flutter/material.dart';

void main() => runApp(ThirdPage());

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey[900],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Servicios'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.assignment_rounded),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          child: ListView(children: <Widget>[
            _items('https://github.com/iolanipere/ProyecFinalIMG/blob/main/images/image03.jpg?raw=true', 'Somelie', 'Armas'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/iolanipere/ProyecFinalIMG/blob/main/images/image04.jpg?raw=true', 'Sastreria', 'Tactica'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/iolanipere/ProyecFinalIMG/blob/main/images/image05.jpg?raw=true', 'Bar', 'Divercion'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/iolanipere/ProyecFinalIMG/blob/main/images/image06.jpg?raw=true', 'Servicio de limpieza', 'Adomicilio'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/iolanipere/ProyecFinalIMG/blob/main/images/image07.jpg?raw=true', 'Mecanico', 'Especialista'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/iolanipere/ProyecFinalIMG/blob/main/images/image08.jpg?raw=true', 'Doctor', 'Servios Medicos'), //x item
            SizedBox(
              height: 5.0,
            ),
          ]),
        ),
      ),
    );
  }

  Widget _items(String url, String producto, String subtitulo) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.grey[600],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text(subtitulo, style: TextStyle(color: Colors.white, fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
