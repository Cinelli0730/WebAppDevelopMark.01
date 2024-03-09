import 'package:flutter/material.dart';

enum InputFieldType { userCode, loginPassword }

class CustomTextFormField extends StatefulWidget {
  final InputFieldType inputFieldType;
  final IconData prefixIcon;
  final String labelText;
  final String hintText;
  final TextEditingController? controller;

  const CustomTextFormField({
    super.key,
    required this.inputFieldType,
    required this.prefixIcon,
    required this.labelText,
    required this.hintText,
    this.controller,
  });

  @override
  CustomTextFormFieldState createState() => CustomTextFormFieldState();
}

class CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        if (widget.inputFieldType == InputFieldType.userCode) {
          bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]").hasMatch(value);
          if (!emailValid) {
            return 'Please enter a valid email';
          }
        } else if (widget.inputFieldType == InputFieldType.loginPassword) {
          if (value.length < 4) {
            return 'Password must be at least 6 characters';
          }
        }
        return null;
      },
      obscureText: widget.inputFieldType == InputFieldType.loginPassword && !_isPasswordVisible,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        prefixIcon: Icon(widget.prefixIcon),
        border: const OutlineInputBorder(),
        suffixIcon: widget.inputFieldType == InputFieldType.loginPassword
            ? IconButton(
                icon: Icon(_isPasswordVisible ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              )
            : null,
      ),
    );
  }
}
