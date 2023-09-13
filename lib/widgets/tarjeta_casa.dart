import 'package:app_ana/enties/casa.dart';
import 'package:flutter/material.dart';


 class TarjetaCasa extends StatelessWidget {
  Casa casa;
  TarjetaCasa({
    super.key,
    required this.casa
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Card(
      child: Column(
        children: [
          Image(
            fit: BoxFit.cover,
            width: 100,
            height: 100,
            image: NetworkImage(casa.url)
          ),
          SizedBox(
            width: screenWidth * 0.25,
            child: Text(
              'Metros C: ${casa.metrosCuadrados}',
              maxLines: 1,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 12)
            ),
          ),
          SizedBox(
            width: screenWidth * 0.25,
            child: Text(
              'Valor: ${casa.valor}',
              maxLines: 1,
              style: const TextStyle(fontSize: 12)
            )
          ),
          SizedBox(
            
            width: screenWidth * 0.25,
            child: Text(
              casa.direccion,
              maxLines: 1,
              style: const TextStyle(fontSize: 12)
            )
          ),
        ]    
      ) 
    );
  }
}