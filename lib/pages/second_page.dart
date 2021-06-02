import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario de reservacion'),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[
              _crearInput1(),
              SizedBox(
                height: 20,
              ),
              _crearInput2(),
              SizedBox(
                height: 20,
              ),
              _crearInput3(),
              SizedBox(
                height: 20,
              ),
              _crearInput4(),
              FlatButton(
                onPressed: () {},
                color: Colors.grey[700],
                child: Text(
                  'Enviar',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearInput1() {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Nombre Completo', hintText: 'Nombre'),
      ),
    );
  }

  Widget _crearInput4() {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(labelText: 'Email', icon: Icon(Icons.email), hintText: 'Email'),
      ),
    );
  }

  Widget _crearInput2() {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(labelText: 'dia del ingreso', hintText: 'ingreso'),
      ),
    );
  }

  Widget _crearInput3() {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(labelText: 'dia del egreso', hintText: 'egreso'),
      ),
    );
  }
}
