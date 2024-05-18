import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/logo.png"),
        Spacer(),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton.filled(onPressed: (){}, icon: Icon(Icons.facebook)),
            IconButton.filled(onPressed: (){}, icon: Icon(Icons.facebook)),
            IconButton.filled(onPressed: (){}, icon: Icon(Icons.facebook)),
          ],
        )
      ],
    );
  }
}