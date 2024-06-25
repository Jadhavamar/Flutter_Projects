
import 'package:flutter/material.dart';


class FlashScreen extends StatelessWidget {
  const FlashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DecoratedBox(  
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(""))
      ),
        
      ),
    );
  }
}
