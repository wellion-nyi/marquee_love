import 'package:flutter/material.dart';
import 'package:orientation_p/widgets/portrait.dart';

class OrientationPage extends StatefulWidget {
  const OrientationPage({super.key});

  @override
  State<OrientationPage> createState() => _OrientationPageState();
}

class _OrientationPageState extends State<OrientationPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: PortraitWidget()),
    );
  }
}
