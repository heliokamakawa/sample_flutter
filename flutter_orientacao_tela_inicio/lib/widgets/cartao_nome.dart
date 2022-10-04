import 'package:flutter/material.dart';

class CartaoNome extends StatelessWidget {
  const CartaoNome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center( 
      child: Text('Helio Toshio Kamakawa', style:  TextStyle(fontSize: 30),),
    );
    
  }
}