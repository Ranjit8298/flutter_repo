import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controllerTxt;
  final TextInputType keyboardType;
  final String hintText;
  final Widget prefixIcon;
  final String labelText;
  final Function onChanged;

  const CustomTextField(
      {super.key,
      required this.controllerTxt,
      required this.keyboardType,
      required this.hintText,
      required this.prefixIcon,
      required this.labelText,
      required this.onChanged,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextField(
        controller: controllerTxt,
        keyboardType: keyboardType,
        autocorrect: true,
        // obscureText: obscureText,
        onChanged: onChanged(controllerTxt),
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          labelText: labelText,
          border: const OutlineInputBorder(
              // borderRadius: BorderRadius.circular(15),
              // borderSide: const BorderSide(color: Colors.grey)
              ),
        ),
      ),
    );
  }
}
