import 'package:flutter/material.dart';

void main() => runApp(FourPage());

class FourPage extends StatefulWidget {
  @override
  _FourPageState createState() => _FourPageState();
}

class _FourPageState extends State<FourPage> {
  List<Persona> _personas = [
    Persona('Gerencia', ' NYC', '6561598537'),
    Persona('Recepcion', ' NYC', '6563578125'),
    Persona('Limpiesa', ' NYC', '6566542389'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Numeros de servicio',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Numeros de servicio'),
        ),
        body: ListView.builder(
            itemCount: _personas.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_personas[index].name + '' + _personas[index].lastname),
                subtitle: Text(_personas[index].phone),
                leading: CircleAvatar(
                  child: Text(_personas[index].name.substring(0, 1)),
                ),
              );
            }),
      ),
    );
  }
}

class Persona {
  String name;
  String lastname;
  String phone;

  Persona(name, lastname, phone) {
    this.name = name;
    this.lastname = lastname;
    this.phone = phone;
  }
}
