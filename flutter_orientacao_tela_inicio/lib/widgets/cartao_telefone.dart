import 'package:flutter/material.dart';

class CartaoTelefone extends StatelessWidget {
  const CartaoTelefone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card( 
      child: ListTile(  
        title: const Text('Telefone:'),
        subtitle: const Text('9 99999-9999)'),
        trailing:painelBotoes(context)
      )
    );
  }

  Widget botaoMSM(){
    return IconButton(
      color: Colors.blue,
      icon: const Icon(Icons.message),
      onPressed: (){
        //launchUrl(Uri(scheme: 'sms', path: '(44) 99999-9999'));
      }
    );
  }

  Widget botaoTelefone(){
    return IconButton(
      color: Colors.blue,
      icon: const Icon(Icons.phone), 
      onPressed: (){
        //launchUrl(Uri(scheme: 'tel', path: '(44) 99999-9999'));
      }
    );
  }

  Widget painelBotoes(BuildContext context){
    return SizedBox( 
      width: MediaQuery.of(context).size.width/4,
      child:  Row(
        children: [
          botaoMSM(),
          botaoTelefone()
        ]
      )
    );
  }
}