import 'package:app_ana/enties/carro.dart';
import 'package:app_ana/widgets/tarjeta_carro.dart';
import 'package:flutter/material.dart';


class Screen2 extends StatefulWidget {

  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2>{ 
  
  List<Carro> carros = [
    Carro(nombre: 'Rayo Mc Queen',url:'https://static.motor.es/fotos-noticias/2020/03/que-coche-es-rayo-mcqueen-202066150-1585635516_1.jpg', energia: 500, gasolina: 400 ),
    Carro(nombre: 'Dumblebee',url:'https://resizer.iproimg.com/unsafe/880x/filters:format(webp)/https://assets.iprofesional.com/assets/jpg/2011/06/344035.jpg', energia: 500, gasolina: 400),
    Carro(nombre: 'DeLorean', url:'https://upload.wikimedia.org/wikipedia/commons/2/28/TeamTimeCar.com-BTTF_DeLorean_Time_Machine-OtoGodfrey.com-JMortonPhoto.com-07.jpg',energia: 500, gasolina: 400 ),
    Carro(nombre: 'Maquina del Misterio',url:'https://www.elcarrocolombiano.com/wp-content/uploads/2022/03/Ford-Econoline-Scooby-Doo.jpg', energia: 500, gasolina: 400),
    Carro(nombre: 'Batimovil',url:'https://upload.wikimedia.org/wikipedia/commons/2/23/Batman_with_his_new_Batmobile_%282445955296%29.jpg',energia: 500, gasolina: 400 ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        leading: IconButton(
          color: Colors.black,
          icon: const Icon( Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        elevation: 2,
        backgroundColor: const Color.fromARGB(255, 252, 252, 252),
        title: const Text('Cars', style: TextStyle( color: Colors.black ) ) 
      ),
      body: ListView.builder(
        itemCount:carros.length,
        itemBuilder: ( _, index) => TarjetaCarro( carro: carros[index]),
      ),
    );
  }
}