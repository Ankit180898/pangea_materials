import 'package:flutter/material.dart';
import 'package:pangea_materials/view/common/footer_component.dart';
import 'package:pangea_materials/view/common/header_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Column(
        children: [
          HeaderComponent(),
          Container(),
          FooterComponent()
        ],
      ),
    );
  }
}