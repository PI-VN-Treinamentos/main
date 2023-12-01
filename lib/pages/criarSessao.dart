import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Text Fields'),
        ),
        body: DynamicTextFields(),
      ),
    );
  }
}

class DynamicTextFields extends StatefulWidget {
  @override
  _DynamicTextFieldsState createState() => _DynamicTextFieldsState();
}

class _DynamicTextFieldsState extends State<DynamicTextFields> {
  List<Widget> grupos = [];
  int grupoCounter = 0;

  List<Widget> perguntas = [];
  int perguntaCounter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: const Color.fromARGB(255, 36, 36, 36),
        child: Form(
          child: ListView(
            children: <Widget>[
              const SizedBox(
                width: 50,
                height: 250,
              ),
              const SizedBox(
                height: 60,
              ),

              // TextBox Nome da Sessão
              TextSelectionTheme(
                data: const TextSelectionThemeData(
                  cursorColor: Colors.white,
                  selectionColor: Colors.blue,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: "Nome da Sessão",
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 90, 90, 90),
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      fontFamily: 'Lexend',
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),

              // TextBox Nome da Instituição
              TextSelectionTheme(
                data: const TextSelectionThemeData(
                  cursorColor: Colors.white,
                  selectionColor: Colors.blue,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: "Nome da Instituição",
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 90, 90, 90),
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      fontFamily: 'Lexend',
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),

              // Area para caixa de Grupos
              Column(
                children: grupos,
              ),

              // Botão + para adicionar mais caixas de grupos
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    grupos.add(
                      buildGroupField(),
                    );
                    grupoCounter++;
                  });
                },
                child: const Text("Adicionar Grupo"),
              ),
              // Final de Grupos

              // Começo de Perguntas
              // texto dinamico para Perguntas
              ListView.builder(
                shrinkWrap: true,
                itemCount: perguntas.length,
                itemBuilder: (context, index) => perguntas[index],
              ),

              // Botão + para adicionar mais caixas de perguntas
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    perguntas.add(
                      TextSelectionTheme(
                        data: const TextSelectionThemeData(
                          cursorColor: Colors.white,
                          selectionColor: Colors.blue,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Pergunta ${perguntaCounter + 1}",
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 90, 90, 90),
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              fontFamily: 'Lexend',
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                    perguntaCounter++;
                  });
                },
                child: const Text("Adicionar Pergunta"),
              ),

              // Finalizar botão
              ElevatedButton(
                onPressed: () {
                  // logica de finalização
                  confirmChanges();
                },
                child: const Text("Finalizar"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGroupField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextSelectionTheme(
        data: const TextSelectionThemeData(
          cursorColor: Colors.white,
          selectionColor: Colors.blue,
        ),
        child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: "Grupo ${grupoCounter + 1}",
            labelStyle: TextStyle(
              color: Color.fromARGB(255, 90, 90, 90),
              fontWeight: FontWeight.w400,
              fontSize: 20,
              fontFamily: 'Lexend',
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void confirmChanges() {
    print("Mudanças feitas");
    //
  }
}
