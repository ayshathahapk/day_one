import 'package:flutter/material.dart';

class Spot extends StatefulWidget {
  const Spot({super.key});

  @override
  State<Spot> createState() => _SpotState();
}

class _SpotState extends State<Spot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
    );
  }
}
