import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DinamicoAd extends StatefulWidget {
  const DinamicoAd({Key? key}) : super(key: key);

  @override
  State<DinamicoAd> createState() => _DinamicoAdState();
}

class _DinamicoAdState extends State<DinamicoAd> {
  
  final String urlImagem = 'https://cdn.pixabay.com/photo/2022/09/08/17/19/gnome-7441442_960_720.png';

  Widget responsivo() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        var width = constraints.biggest.width; 
        var altura = constraints.biggest.height/2; 
        return Scaffold(   
          body: Column(   
            children: [
              SizedBox(
                width: width,
                height: altura,
                child: const ColoredBox(color: Colors.amber),
              ),
              SizedBox(
                width: width,
                height: altura,
                child: const ColoredBox(color: Colors.red),
              ),
            ],
          )
        );
      }
    );
  }
  Widget dinamico() {
    return OrientationBuilder(
      builder:  (context, orientation) {
        return Scaffold(  
          body: GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
            children: const [
              SizedBox(
                child: ColoredBox(color: Colors.amber),
              ),
              SizedBox(
                child: ColoredBox(color: Colors.red),
              ),
            ],
          )
        );
      }
    );
  }


  @override
  Widget build(BuildContext context) {
    
    return responsivo();
  }
}