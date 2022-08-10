import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final GestureTapCallback? onTap;

  CustomButton({required this.name, this.onTap, required Icon child});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: onTap,
      child: Text(name),
    );
  }
}
