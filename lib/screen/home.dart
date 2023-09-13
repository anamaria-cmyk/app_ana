//import 'package:app_ana/widgets/alerta.dart';
import 'package:flutter/material.dart';

class HomeSreen extends StatelessWidget {
  const HomeSreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              minWidth: 100,
              elevation: 2,
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, 'screen_2');
              },
              child: const Text('Carros'),
            ),
      
            MaterialButton(
              minWidth: 100,
              elevation: 2,
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
               Navigator.pushNamed(context, 'screen_3');
              },
              child: const Text('Casas'),
            ),
          ],
        ),
      )
    );
  }
}