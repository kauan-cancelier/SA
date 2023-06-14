

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
    final controller;
    final validatorMessage;
    final text;
    final message;
    final password;


   const CustomTextField({
    super.key,
    this.controller,
    this.validatorMessage,
    this.text,
    this.password = false,
    this.message,
   });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: widget.controller,
        validator: (value) {
          if(value!.isEmpty) {
            return widget.validatorMessage;
          }
          return null;
        },
        obscureText: widget.password,
        decoration: InputDecoration(
          labelText: widget.text,
          hintText: widget.message,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      );
  }
}