// ignore_for_file: must_be_immutable
import 'package:app_ana/enties/carro.dart';
import 'package:app_ana/screen/zom.dart';
import 'package:flutter/material.dart';

class TarjetaCarro extends StatelessWidget {
  Carro carro;
  TarjetaCarro ({
    super.key,
    required this.carro
  });
 
   @override
   Widget build(BuildContext context) {
     return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => ZomTarjeta (carro: carro)
          )
        );
      },
      child: ListTile(
        leading: Image(
          fit: BoxFit.cover,
          width: 100,
          image: NetworkImage(carro.url),
        ),
        title: Text(carro.nombre),
        subtitle: Text(carro.nombre),
      )
    );
  }
}
 