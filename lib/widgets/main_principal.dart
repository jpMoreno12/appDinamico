import 'package:flutter/material.dart';

class MainP extends StatefulWidget {
  const MainP({super.key});

  @override
  State<MainP> createState() => MainState();
}

class MainState extends State<MainP> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 656,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          width: 2,
        ),
      ),
      child: const Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Esta e a Pagina Principal',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ), 
        ],
      ),
    );
  }
}
