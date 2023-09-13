import 'package:app_ana/enties/casa.dart';
import 'package:app_ana/widgets/inputs.dart';
import 'package:app_ana/widgets/tarjeta_casa.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {

  late List<Casa> casas;

  @override
  void initState() {
    casas = [
      Casa(direccion: 'Mz 89 Casa 7', metrosCuadrados: '5.000',valor: '600.000000', url:'https://images.homify.com/images/a_0,c_fit,f_auto,q_auto,w_554/v1464986821/p/photo/image/1535150/IMG_2384/fotos-de-casas-de-estilo-moderno-de-daniele-galante-arquitetura.jpg'),
      Casa(direccion: 'Calle 10 No. 9 - 78  Centro', metrosCuadrados: '4.0000 ',valor: '1.00000000' , url:'https://hips.hearstapps.com/hmg-prod/images/casa-caracol-1526458370.jpeg?resize=1200:*'),
      Casa(direccion: 'Carrera 22 No. 17-31', metrosCuadrados: '800',valor: '100.000000', url:'https://hips.hearstapps.com/hmg-prod/images/ideas-reformar-casa-pueblo-alberca-contraventanas-1533642802.jpg?crop=1xw:0.84375xh;center,top&resize=1200:*'),
      Casa(direccion: 'Carrera 54 No. 68 - 80', metrosCuadrados: '3.0000',valor: '800.000000', url:'https://www.arquitecturaydiseno.es/medio/2020/02/06/exterior-casa-con-piscina-en-rusia_0aa0c1a3_2000x1125.jpg'),
      Casa(direccion: 'Calle 15 No. 9 - 56 centro', metrosCuadrados: '4.0000',valor: '20.000000' , url:'https://resizer.glanacion.com/resizer/v2/OSDN6IXVCZC6XHVBICU6W37PJU.jpg?auth=6e9857bc3d40e438270df25f8e55f2dfe4799fa1e0295d68a1f832024e71560b&width=420&height=236&quality=70&smart=true'),
      Casa(direccion: 'Carrera 9  No. 7 - 34', metrosCuadrados: '900' ,valor: '500.000000' , url:'https://s2.abcstatics.com/media/estilo/2021/10/07/DSC03981-kwo--620x349@abc.jpg'),
      Casa(direccion: 'Calle 12 No. 4 - 19 ', metrosCuadrados:' 1.0000',valor:' 80.000000', url:'https://caracol.com.co/resizer/k-8KJb9QsKf2zxO-1uSIstoE7tU=/650x0/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/prisaradioco/UWCPFNH7ZJOCJFCOFJZ6NCZ3TU.jpg'),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth  = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height; 
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          icon: const Icon( Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 2,
        backgroundColor: const Color.fromARGB(255, 252, 252, 252),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text('Casas', style: TextStyle( color: Colors.black ) ),
             Icon(Icons.house_sharp, color: Color.fromARGB(255, 40, 70, 240),)
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight * 0.7,
          child: Column(
            children: [
              const Spacer(
                flex: 1,
              ),

              Inputs(
                casas: casas,
                actualizarEstadoDePadre: (){
                  setState(() {
                    
                  });
                },
              ),

              const Spacer(
                flex: 3,
              ),
              SizedBox(
                width: screenWidth,
                height: screenHeight * 0.20,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: casas.length,
                  itemBuilder:( _, index) => TarjetaCasa( casa: casas[index]), 
                ),
              ),
              const Spacer(
                flex: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}