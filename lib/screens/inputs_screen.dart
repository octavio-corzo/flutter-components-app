import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Inputs y Forms",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  suffixIcon: Icons.person_outline,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                  suffixIcon: Icons.person_outline,
                ),
              ],
            ),
          ),
        ));
  }
}
