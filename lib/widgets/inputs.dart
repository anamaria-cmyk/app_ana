import 'package:app_ana/enties/casa.dart';
import 'package:app_ana/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  final Map<String, String> formValues = {
    'direccion' : '',
    'valor'     : '',
    'metros cuadrados' : ''
  };
  
  final List<Casa> casas;
  static final _formKey = GlobalKey<FormState>();
  final Function() actualizarEstadoDePadre;
  Inputs({
    super.key, 
    required this.casas,
    required this.actualizarEstadoDePadre
  });
  
  @override
  Widget build(BuildContext context) {
   
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        color:Color.fromARGB(255, 252, 252, 252),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 0,
            color: Colors.blue,
            offset: Offset.zero,
          )
        ]
      ),
      padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 15 ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Center(child: Text('Agregar Casa', style: TextStyle(fontWeight: FontWeight.bold))),

            CustomInputField(labelText: 'Direccion', formProperty: 'direccion', formValues: formValues),
             const SizedBox( height: 20),        
            CustomInputField(labelText: 'Valor', formProperty: 'valor', formValues: formValues),
             const SizedBox( height: 20),
            CustomInputField(labelText: 'Metros cuadrados', formProperty: 'metros cuadrados', formValues: formValues,),
             const SizedBox( height: 20),
          
            ElevatedButton(
              child: const  SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text('Agregar')
                )
              ),
              onPressed: () {
                formValues['direccion'];
                formValues['metros cuadrados'];
                formValues['valor'];
                final casa = Casa(
                  direccion: formValues['direccion']!, 
                  metrosCuadrados:   formValues['metros cuadrados']!, 
                  url: 'https://cdn.autobild.es/sites/navi.axelspringer.es/public/media/image/2016/08/563257-casas-flotantes-dubai-foto-floating-seahorse-tzar-edition.png?tf=1920x', 
                  valor: formValues['valor']!
                );
                casas.add(casa);
                actualizarEstadoDePadre();
              }
            )
          ],
        )
      ),
    );
  }
}