import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData? iconData;

  const CustomIconButton({Key? key, this.onTap, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.green, // Assuming primaryGreen is defined in the configuration.dart
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.6), // Assuming primaryGreen is defined in the configuration.dart
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}
