import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final function;
  final text;
  const CustomButton({super.key, this.function, this.text});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize:  const Size(100, 50),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          shadowColor: Colors.black,
          elevation: 30,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        onPressed: widget.function,
        child: Text(widget.text)),
    );
  }
}