import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/widgets/cartao_email.dart';
import 'package:flutter_application_1/widgets/cartao_nome.dart';
import 'package:flutter_application_1/widgets/cartao_telefone.dart';

class Retrato extends StatelessWidget {
  const Retrato({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(  
      body: Column( 
        children: const [
          CartaoNome(),
          CartaoTelefone(),
          CartaoEmail()
        ],
      ),
    );
  }
}