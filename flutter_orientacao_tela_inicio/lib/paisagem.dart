import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Paisagem extends StatelessWidget {
  const Paisagem({Key? key}) : super(key: key);

  final String urlImagem = 'https://cdn.pixabay.com/photo/2022/09/08/17/19/gnome-7441442_960_720.png';

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        var width = constraints.biggest.width; 
        var radius = width/3;
       // var height = constraints.biggest.height;

        return Scaffold(
          body: ListView(  
            padding: const EdgeInsets.all(60),
            children: [  
              CircleAvatar(
                  backgroundImage: NetworkImage(urlImagem), 
                  radius:radius ,
              ), 
               
              const Center( 
                child: Text('Hélio Kamakawa', style:  TextStyle(fontSize: 30),),
              ),
              Card( 
                child: ListTile( 
                  title: const Text('Telefone:'), 
                  subtitle: const Text('(44) 9 99999-9999)'),
                  trailing: SizedBox( 
                    width: width/4 ,
                    child:  Row(
                      children: [
                        IconButton(
                          color: Colors.blue,
                          icon: const Icon(Icons.message), 
                          onPressed: (){
                            launchUrl(Uri(scheme: 'sms', path: '(44) 99999-9999'));
                          }
                        ),
                        IconButton(
                          color: Colors.blue,
                          icon: const Icon(Icons.phone), 
                          onPressed: (){
                            launchUrl(Uri(scheme: 'tel', path: '(44) 99999-9999'));
                          }
                        )
                      ]
                      ),
                  ),
                ),
              ),
              Card( 
                child: ListTile( 
                  title: const Text('E-mail:'), 
                  onTap: () {
                    launchUrl(Uri(scheme: 'mailto', path: 'exemplo@email.com'));
                  },
                  subtitle: const Text('heliokamakawa@gmail.com'),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton( 
            child: const Icon(Icons.arrow_back),
            onPressed: (){
              //_back.goToBack();
            },
          ),
        );
      },
    );
  }
}