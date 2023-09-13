import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.buttonText, required this.onPressed});
  final String buttonText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 148, 114, 101),
          ),
          elevation: MaterialStateProperty.all<double>(0),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 240, 239, 239),
          ),
        ),
      ),
    );
  }
}
