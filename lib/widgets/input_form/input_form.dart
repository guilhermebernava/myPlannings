import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../theme/AppColors.dart';

class InputForm extends StatelessWidget {
  final String placeHolder;
  final String hint;
  final int maxChar;
  final TextInputType keyboardType;
  final IconData icon;
  final TextEditingController controller;
  final String? Function(String?) validator;

  const InputForm({
    Key? key,
    required this.placeHolder,
    required this.keyboardType,
    required this.icon,
    required this.controller,
    required this.validator,
    required this.hint,
    required this.maxChar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
      child: TextFormField(
        controller: controller,
        validator: validator,
        inputFormatters: [
          LengthLimitingTextInputFormatter(maxChar),
        ],
        maxLengthEnforcement: MaxLengthEnforcement.none,
        decoration: InputDecoration(
          focusColor: AppColors.primaryColor,
          hintText: hint,
          labelText: placeHolder,
          labelStyle: const TextStyle(
            fontSize: 25,
          ),
          icon: Icon(
            icon,
            size: 35,
          ),
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}
