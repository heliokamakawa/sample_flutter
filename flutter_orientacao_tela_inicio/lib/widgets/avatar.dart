import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String urlImagem = 'https://cdn.pixabay.com/photo/2022/09/08/17/19/gnome-7441442_960_720.png';
  final double raio;
  const Avatar({Key? key, required this.raio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(urlImagem), 
      radius: raio,
    );
  }
}