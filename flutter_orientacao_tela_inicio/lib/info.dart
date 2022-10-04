import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/cartao_email.dart';
import 'package:flutter_application_1/widgets/cartao_telefone.dart';

class Infor extends StatelessWidget {
  const Infor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(  
        children: const [
          CartaoTelefone(),
          CartaoEmail()
          
        ],
      ),
    );
  }
}