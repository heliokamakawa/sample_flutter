import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/avatar.dart';
import 'package:flutter_application_1/info.dart';

class Teste extends StatefulWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  State<Teste> createState() => _Teste();
}

class _Teste extends State<Teste> {
  
  final String urlImagem = 'https://cdn.pixabay.com/photo/2022/09/08/17/19/gnome-7441442_960_720.png';

  Widget responsivo() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        var width = constraints.biggest.width; 
        var altura = constraints.biggest.height/2; 
        return Scaffold(   
          body: Column(   
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Avatar(raio: 100),
              Infor(),
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
            padding: const EdgeInsets.all(40.0),
            crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
            children: const [
              Avatar(raio: 100),
              Infor(),
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