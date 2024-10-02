import 'package:flutter/material.dart';

class Snackkbar extends StatelessWidget {
  const Snackkbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(width: 2),
      ),
      child: const Row(
        children: [Text('SnackBar')],
      ),
    );
  }
}
