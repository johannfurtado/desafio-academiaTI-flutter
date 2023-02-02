import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'src/components/ButtonComponent.dart';
import 'src/components/TextComponent.dart';
import 'src/components/TitleComponent.dart';
import 'src/components/InputComponent.dart';

void main() {
  runApp(MaterialApp(home: DesafioAcademiaDesktop()));
}

class DesafioAcademiaDesktop extends StatefulWidget {
  const DesafioAcademiaDesktop({super.key});

  @override
  _DesafioAcademiaDesktopState createState() => _DesafioAcademiaDesktopState();
}

class _DesafioAcademiaDesktopState extends State<DesafioAcademiaDesktop> {
  bool _visible = false;
  String _name = ' ';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 24,
                    right: 24,
                    left: 24,
                    bottom: 24,
                  ),
                  child: Column(
                    children: [
                      Container(
                        child:
                            TitleComponent('Desafio Academia Desktop - Johann'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        child: TextComponent(
                            'Meu nome é Johann, estou aprendendo Flutter e essa é minha solução para o desafio proposto para a academia de inovação!'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        child: TextComponent('Digite seu nome: '),
                      ),
                      SizedBox(
                        child: InputComponent(
                          inputFormatter: [
                            FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                          ],
                          onChanged: (value) {
                            _name = value;
                          },
                        ),
                        width: 280,
                        height: 35,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Visibility(
                        visible: _visible,
                        child: Container(
                          height: 280,
                          width: 500,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _visible = !_visible;
                              });
                              Navigator.of(context).pop();
                              launch(
                                  'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
                            },
                            child: Image.network(
                                'https://media2.giphy.com/media/rAZEnOu0KHQK4/giphy.gif'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            child: SizedBox(
                              child: InkWell(
                                mouseCursor: SystemMouseCursors.click,
                                child: ButtonComponent(
                                    color: Colors.blue,
                                    colorHover: Colors.blue.shade900,
                                    onPressed: () {
                                      _showPopup(context);
                                    },
                                    text: 'Clique aqui!'),
                                onTap: () {
                                  _showPopup(context);
                                },
                              ),
                              width: 100,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Olá, $_name :)"),
          content: Text(
              "Parabéns, você clicou no botão! Agora faça uma magia ;)",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          actions: <Widget>[
            SimpleDialogOption(
              child: Text("Magia",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                      fontSize: 18)),
              onPressed: () {
                setState(() {
                  _visible = !_visible;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
