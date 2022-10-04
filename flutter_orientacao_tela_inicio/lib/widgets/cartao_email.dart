
import 'package:flutter/material.dart';

class CartaoEmail extends StatelessWidget {
  const CartaoEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card( 
      child: ListTile( 
        title: const Text('E-mail:'), 
        onTap: () {
          // launchUrl(Uri(scheme: 'mailto', path: 'exemplo@email.com'));
        },
        subtitle: const Text('heliokamakawa@gmail.com'),
      ),
    );
  }
}