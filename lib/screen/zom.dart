import 'package:app_ana/enties/carro.dart';
import 'package:flutter/material.dart';

class ZomTarjeta extends StatelessWidget {

  final Carro carro;

  const ZomTarjeta ({
    super.key, 
    required this.carro
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
          color: Colors.black,
          icon: const Icon( Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center( child: Text(carro.nombre, style: const TextStyle( color: Colors.black))),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Image(
            image: NetworkImage(carro.url),
            height: 250,
            width: 500,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('energia', style: TextStyle( fontWeight: FontWeight.bold)),
              SizedBox(width: screenWidth * 0.02),
              Text('${carro.energia}'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('gasolina', style: TextStyle( fontWeight: FontWeight.bold)),
              SizedBox(width: screenWidth * 0.02),
              Text('${carro.gasolina}'),
            ],
          )
        ],
      ),
    );
  }
}