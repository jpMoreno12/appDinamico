import 'package:flutter/material.dart';

class DragavelAppBar extends StatelessWidget {
  const DragavelAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(  
      width: 400,
      height: 90,
      decoration: BoxDecoration(  
        color: Colors.green,
        border: Border.all(width: 2),
      ),
      child: const Center(
        child: Text(
          'Arraste a AppBar aqui',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
