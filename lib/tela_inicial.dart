import 'package:flutter/material.dart';

class TrucoContador extends StatefulWidget {
  const TrucoContador({super.key});

  @override
  State<TrucoContador> createState() => _TrucoContadorState();
}

class _TrucoContadorState extends State<TrucoContador> {
  int _contadorPontuacao1 = 0;
  int _contadorPontuacao2 = 0;
  int _contadorPlacar1 = 0;
  int _contadorPlacar2 = 0;

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Color(0xFFF0F0F0)),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        backgroundColor: const Color(0xFF000000),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.share,
              color: Color(0xFFF0F0F0),
            ),
            onPressed: () {
              // Lógica do botão de notificações
            },
          ),
        ],
      ),
      drawer: Container(
        width: largura / 3,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
          color: Color(0xFFF0F0F0),
        ),
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF0095D6),
              ),
              child: Text('Meu Drawer'),
            ),
            ListTile(
              leading: const Icon(
                Icons.dark_mode,
                color: Color(0xFF000000),
              ),
              title: const Text(
                'Modo Noturno',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                ),
              ),
              onTap: () {
                // Lógica para navegar para a página inicial
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Color(0xFF000000),
              ),
              title: const Text(
                'Configurações',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                ),
              ),
              onTap: () {
                // Lógica para navegar para a página de configurações
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 35.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Nós',
                            style: TextStyle(
                              fontFamily: 'Kavoon',
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '$_contadorPontuacao1',
                            style: const TextStyle(
                              fontFamily: 'Kavoon',
                              fontWeight: FontWeight.bold,
                              fontSize: 70,
                            ),
                          ),
                          const SizedBox(height: 50),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if(_contadorPontuacao1 < 12) {
                                  _contadorPontuacao1++;
                                }                                
                              });
                            },
                            child: Image.asset(
                              'assets/images/carta_copas.png',
                            ),
                          ),
                          const SizedBox(height: 20),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if(_contadorPontuacao1 < 12) {
                                  _contadorPontuacao1 += 3;
                                }
                              });
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                color: Color(0xFF000000),
                              ),
                              width: 150,
                              height: 50,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Truco!!',
                                    style: TextStyle(
                                      fontFamily: 'Kavoon',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFF0F0F0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if(_contadorPontuacao1 < 12) {
                                      _contadorPontuacao1 += 6;
                                    }
                                  });
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    color: Color(0xFF000000),
                                  ),
                                  width: 40,
                                  height: 40,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '+6',
                                        style: TextStyle(
                                          fontFamily: 'Kavoon',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFF0F0F0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if(_contadorPontuacao1 < 12) {
                                      _contadorPontuacao1 += 9;
                                    }
                                  });
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    color: Color(0xFF000000),
                                  ),
                                  width: 40,
                                  height: 40,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '+9',
                                        style: TextStyle(
                                          fontFamily: 'Kavoon',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFF0F0F0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if(_contadorPontuacao1 < 12) {
                                      _contadorPontuacao1 += 12;
                                    }
                                  });
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    color: Color(0xFF000000),
                                  ),
                                  width: 40,
                                  height: 40,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '+12',
                                        style: TextStyle(
                                          fontFamily: 'Kavoon',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFF0F0F0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: altura,
                      margin: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Color(0xFF000000),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Eles',
                            style: TextStyle(
                              fontFamily: 'Kavoon',
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '$_contadorPontuacao2',
                            style: const TextStyle(
                              fontFamily: 'Kavoon',
                              fontWeight: FontWeight.bold,
                              fontSize: 70,
                            ),
                          ),
                          const SizedBox(height: 50),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if(_contadorPontuacao2 < 12) {
                                  _contadorPontuacao2++;
                                }
                              });
                            },
                            child: Image.asset(
                              'assets/images/carta_copas.png',
                            ),
                          ),
                          const SizedBox(height: 20),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if(_contadorPontuacao2 < 12) {
                                  _contadorPontuacao2 += 3;
                                }
                              });
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                color: Color(0xFF000000),
                              ),
                              width: 150,
                              height: 50,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Truco!!',
                                    style: TextStyle(
                                      fontFamily: 'Kavoon',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFF0F0F0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if(_contadorPontuacao2 < 12) {
                                      _contadorPontuacao2 += 6;
                                    }
                                  });
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    color: Color(0xFF000000),
                                  ),
                                  width: 40,
                                  height: 40,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '+6',
                                        style: TextStyle(
                                          fontFamily: 'Kavoon',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFF0F0F0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if(_contadorPontuacao2 < 12) {
                                      _contadorPontuacao2 += 9;
                                    }
                                  });
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    color: Color(0xFF000000),
                                  ),
                                  width: 40,
                                  height: 40,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '+9',
                                        style: TextStyle(
                                          fontFamily: 'Kavoon',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFF0F0F0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if(_contadorPontuacao2 < 12 && _contadorPontuacao2 == 0) {
                                      _contadorPontuacao2 += 12;
                                    }
                                    else {
                                      _contadorPontuacao2 = 12;
                                    }
                                  });
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    color: Color(0xFF000000),
                                  ),
                                  width: 40,
                                  height: 40,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '+12',
                                        style: TextStyle(
                                          fontFamily: 'Kavoon',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFF0F0F0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF000000),
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              const Text(
                'Placar Geral',
                style: TextStyle(
                  fontFamily: 'Kavoon',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontFamily: 'Kavoon',
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'X',
                    style: TextStyle(
                      fontFamily: 'Kavoon',
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                      fontFamily: 'Kavoon',
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
