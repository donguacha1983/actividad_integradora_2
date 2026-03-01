import 'package:flutter/material.dart';

class CampoTextoPersonalizado extends StatelessWidget {
  final String label;
  final IconData icono;
  final TextInputType tipoTeclado;
  final String? Function(String?)? validador;
  final void Function(String?)? onSaved;
  final bool esContrasena;

  const CampoTextoPersonalizado({
    super.key,
    required this.label,
    required this.icono,
    this.tipoTeclado = TextInputType.text,
    this.validador,
    this.onSaved,
    this.esContrasena = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        keyboardType: tipoTeclado,
        obscureText: esContrasena,
        validator: validador,
        onSaved: onSaved,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icono, color: Colors.blue),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          filled: true,
          fillColor: Colors.grey[50],
        ),
      ),
    );
  }
}
