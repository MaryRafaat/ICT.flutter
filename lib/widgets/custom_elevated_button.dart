import 'package:flutter/material.dart';
import 'package:flutter_my_app/widgets/custom_text.dart';

class customElevatedButton extends StatelessWidget {
  final String? text;
  final Color? backgroudColor;
  final void Function()? onPressed;
  const customElevatedButton(
      {super.key,
      required this.text,
      this.backgroudColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor:
            backgroudColor ?? const Color.fromARGB(255, 23, 96, 222),
      ),
      child: CustomText(
        text: text,
        style: const TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
