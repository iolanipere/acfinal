import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel'),
      ),
      body: Center(
        child: Container(
          color: Colors.grey[900],
          child: Image.asset(
            'assets/continental.jpg',
            width: 400.0,
          ),
        ),
      ),
    );
  }
}
