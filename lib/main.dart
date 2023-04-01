import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Uma fé pequena leva as almas até o céu, mas uma grande fé traz o céu até as almas. C. H. Spurgeon",
    "Você pode ocultar sua fraqueza de seu melhor amigo, mas não a esconderá de seu pior inimigo. C. H. Spurgeon",
    "Não deixe aquilo que é urgente tomar o lugar daquilo que é importante em sua vida. C. H. Spurgeon",
    "Tome para você a promessa de Deus, pois ela é suficiente, e mais do que suficiente, mesmo que todas as fontes da terra se sequem. C. H. Spurgeon",
    "Aqueles que mergulham no mar das aflições trazem pérolas raras para cima. C. H. Spurgeon",
    "A fé sobe pelas escadas que o amor construiu, e olha pelas janelas que a esperança abriu. C. H. Spurgeon",
    "Cada vez que você faz uma opção está transformando sua essência em alguma coisa um pouco diferente do que era antes. C. S. Lewis",
    "Quando se trata de conhecer a Deus, toda a iniciativa depende dEle. Se Ele não se quiser revelar, nada do que façamos nos permitirá encontrá-lo. C. S. Lewis",
    "Deus não quer algo de nós. Ele simplesmente nos quer. C. S. Lewis",
    "Tudo que é eterno está eternamente acima do tempo. C. S. Lewis",
    "Eu descobri em mim mesmo desejos os quais nada nesta Terra pode satisfazer. A única explicação lógica é que eu fui feito para outro mundo. C. S. Lewis",
    "Eu acredito no Cristianismo como acredito que o sol nasce todo dia. Não apenas porque o vejo, mas porque através dele eu vejo tudo ao meu redor. C. S. Lewis"
  ];

  // Lógica para gerar uma frase

  var _fraseGerada = "clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  // Corpo do app

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: const Color.fromARGB(255, 99, 173, 15),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logo.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                ElevatedButton(
                  child: Text(
                    "Nova frase",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: _gerarFrase,
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                )
              ],
            ),
          ),
        ));
  }
}
