import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_introduction_screen/app.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class Pages extends StatelessWidget{
  const Pages({Key? key}) : super(key: key);

  void _launcherURL(String url) async{
    await launch(url);
  }

  PageViewModel _pageView({title, body, urlImg, urlLancher}){
    return PageViewModel(  
      title: title, 
      body: body, 
      image: Center( 
        child: Image.network(urlImg),
      ),
      footer: ElevatedButton(  
        child:  const Text("Let's Go!"),
        onPressed: () {
          _launcherURL(urlLancher);
        },
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    var listPages = [
      _pageView(title: 'YouTube', body: 'Inscreva-se no canal', 
       urlImg: 'https://cdn.pixabay.com/photo/2017/10/04/11/45/you-tube-2815920_960_720.jpg',
       urlLancher: 'https://youtube.com/c/heliokamakawa'), 
      _pageView(title: 'GitHub', body:  'Acesse os projetos dos cursos',
      urlImg: 'https://cdn.pixabay.com/photo/2017/08/05/11/24/logo-2582757_960_720.png',
      urlLancher: 'https://github.com/heliokamakawa'), 
      _pageView(title: 'Linkedin', body: 'Siga nosso Linkedin, pois há várias dicas importantes', 
      urlImg: 'https://cdn.pixabay.com/photo/2017/10/04/11/58/linkedin-2815969_960_720.jpg', 
      urlLancher: 'https://www.linkedin.com/in/h%C3%A9lio-kamakawa-31a11427/')
    ];
    return Scaffold( 
      body:  IntroductionScreen(  
        pages: listPages, 
        next: const Icon(Icons.navigate_next),
        done: const Text('Fechar'), 
        showSkipButton: true,
        skip: const Text('Pular'), 
        onDone: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => App(),));
        },
        onSkip: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => App(),));
        },
      ),
    );
  }

}