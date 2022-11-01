import 'package:flutter/material.dart';
import 'package:streaming_platform/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size?>(
          Size(double.infinity, 56),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(72),
          ),
        ),
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
