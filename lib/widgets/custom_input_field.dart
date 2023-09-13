import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  
 final String formProperty; 
 final String labelText;
 final Map<String, String> formValues; 


  const CustomInputField({
    Key? key, 
    required this.formProperty, 
    required this.formValues,
    required this.labelText, 
  }) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: '',
      onChanged: ( value ) => formValues[formProperty] = value,
      decoration: InputDecoration(
        labelStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        labelText: labelText
      ),
    );
  }
}