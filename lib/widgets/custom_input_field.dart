import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        print("value: $value");
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: '3 caracteres',
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
