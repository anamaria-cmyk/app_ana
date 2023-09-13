import 'package:flutter/material.dart';

class Alerta extends StatelessWidget {
  const Alerta
  ({super.key});

  @override
  Widget build(BuildContext context) {
    
    return AlertDialog(
      icon: const Icon(
        Icons.house_rounded
      ),
      elevation: 2,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
      title: const Text('Proximamente disponible'),
    );



  }
}

