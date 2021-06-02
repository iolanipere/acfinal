import 'package:flutter/material.dart';
import 'package:perez/pages/first_page.dart';
import 'package:perez/pages/second_page.dart';
import 'package:perez/pages/third_page.dart';
import 'package:perez/pages/four_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel',
      theme: ThemeData(
        primarySwatch: Colors.grey[600],
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PaginaInicio(),
    );
  }
}

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new FirstPage());
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
      case 3:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new FourPage());
        break;
    }
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_sharp, color: Colors.grey[900], size: 20.0), title: Text('Inicio')),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today_sharp, color: Colors.grey[900], size: 20.0), title: Text('Reservacion')),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.grey[900], size: 20.0), title: Text('servicios')),
        BottomNavigationBarItem(icon: Icon(Icons.ring_volume_rounded, color: Colors.grey[900], size: 20.0), title: Text('contacto')),
      ]),
    );
  }
}
