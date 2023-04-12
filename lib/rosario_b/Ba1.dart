//EensdD
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

class Ba1 extends StatefulWidget{
  const Ba1({Key key}) : super(key: key);

  @override
  _Ba1State createState() => _Ba1State();
}

class _Ba1State extends State<Ba1> {
  int _myAccentColor = 0xff000000;
  int _myPrimaryColor = 0xff000000;
  double _mySizeFont = 16.0;
  String _myMisterio = " ";

  @override
  Widget build(BuildContext context) {
    setState(() {
      obtenerPreferencias();
    });

    String image = 'ba.jpg';
    String rutasiguiente = '/Ba2';
    String titulo = _myMisterio;
    String contenido = 'x';

    switch(_myMisterio){
      case 'Gozosos': {
        titulo = 'Primer Misterio Gozoso';
        contenido = 'La Encarnación del Hijo de Dios:\n\n'
            '«Al sexto mes el ángel Gabriel fue enviado por Dios a una ciudad '
            'de Galilea, llamada Nazaret, a una virgen desposada con un hombre '
            'llamado José, de la estirpe de David; el nombre de la virgen era '
            'María». (Lc 1,26-27).';
      } break;

      case 'Dolorosos': {
        titulo = 'Primer Misterio Doloroso';
        contenido = 'La oración en el Huerto:\n\n'
            '«Entonces Jesús fue con ellos a un huerto, llamado Getsemaní, y '
            'dijo a sus discípulos: "Sentaos aquí mientras voy a orar". Y '
            'tomando consigo a Pedro y a los dos hijos de Zebedeo, comenzó a '
            'sentir tristeza y angustia. Entonces les dijo: "Mi alma está '
            'triste hasta el punto de morir; quedaos aquí y velad conmigo". Y '
            'adelantándose un poco, cayó rostro en tierra, y suplicaba así: '
            '"Padre mío, si es posible, que pase de mí esta copa, pero no sea '
            'como yo quiero, sino como quieras tú"». (Mt 26, 36-39).';
      } break;

      case 'Gloriosos': {
        titulo = 'Primer Misterio Glorioso';
        contenido = 'La resurrección del Hijo de Dios:\n\n '
            '«El primer día de la semana, muy de mañana, fueron al sepulcro '
            'llevando los aromas que habían preparado. Pero encontraron que la '
            'piedra había sido retirada del sepulcro, y entraron, pero no '
            'hallaron el cuerpo del Señor Jesús. No sabían que pensar de esto, '
            'cuando se presentaron ante ellas dos hombres con vestidos '
            'resplandecientes. Ellas, despavoridas, miraban al suelo, y ellos '
            'les dijeron: "¿Por qué buscáis ente los muertos al que está vivo? '
            'No está aquí, ha resucitado"». (Lc 24, 1-6).';
      } break;

      case 'Luminosos': {
        titulo = 'Primer Misterio Luminoso';
        contenido = 'El Bautismo en el Jordán:\n\n'
            '«Bautizado Jesús, salió luego del agua; y en esto se abrieron los '
            'cielos y vio al Espíritu de Dios que bajaba en forma de paloma y '
            'venía sobre él. Y una voz que salía de los cielos decía: "Este es '
            'mi Hijo amado, en quien me complazco"». (Mt 3,16-17).';
      } break;
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        brightness: Brightness.dark,
        backgroundColor: Color(0x44000000),
        elevation: 0,
        title: Text(titulo),
      ),

      body: Container(
          constraints: BoxConstraints.expand(),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),

          child: Stack(
              children: [

                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 200.0,
                        margin: EdgeInsets.only(bottom: 70.0),
                        child: ListView(
                          padding: EdgeInsets.only(top: 0.0),
                          children: [
                            Text(contenido,
                                textAlign: TextAlign.justify,
                                style: TextStyle(color: Colors.white, fontSize: _mySizeFont, fontWeight: FontWeight.w400)
                            ),
                          ],
                        )
                    )
                ),

                Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.pushNamed(context, rutasiguiente);
                      //Clipboard.setData(ClipboardData(text: "hola mundo"));
                      HapticFeedback.lightImpact();
                    },
                    backgroundColor: Color(_myAccentColor),
                    child: const Icon(Icons.arrow_forward),
                  ),
                ),

                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container( height: 45.0,  width: 45.0,
                    child: FittedBox(
                      child: FloatingActionButton(
                        heroTag: "atras",
                        onPressed: () {
                          HapticFeedback.mediumImpact();
                          Navigator.pop(context);
                        },
                        backgroundColor: Color(_myAccentColor),
                        child: const Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container( height: 45.0,  width: 45.0,
                    margin: EdgeInsets.only(left: 55.0),
                    child: FittedBox(
                      child: FloatingActionButton(
                        heroTag: "letraTamano",
                        backgroundColor: Color(_myAccentColor),
                        onPressed: () {
                          HapticFeedback.mediumImpact();
                          showDialog(
                            context: context,
                            builder: (BuildContext context){
                              return CupertinoAlertDialog(
                                //title: Text('Tamaño de letra'),
                                content: Column(
                                  children: [
                                    ElevatedButton(
                                        child: Text('Letra muy pequeña', style: TextStyle(fontSize: 16.0),),
                                        style: ElevatedButton.styleFrom(primary: Colors.blueGrey, minimumSize: Size(220, 35),),
                                        onPressed: () {
                                          HapticFeedback.mediumImpact();
                                          guardarTamanoLetraPreferencias(16.0);
                                          Navigator.of(context).pop();
                                        }
                                    ),

                                    ElevatedButton(
                                        child: Text('Letra pequeña', style: TextStyle(fontSize: 18.0),),
                                        style: ElevatedButton.styleFrom(primary: Colors.blueGrey, minimumSize: Size(220, 35),),
                                        onPressed: () {
                                          HapticFeedback.mediumImpact();
                                          guardarTamanoLetraPreferencias(18.0);
                                          Navigator.of(context).pop();
                                        }
                                    ),

                                    ElevatedButton(
                                        child: Text('Letra mediana', style: TextStyle(fontSize: 20.0,)),
                                        style: ElevatedButton.styleFrom(primary: Colors.blueGrey, minimumSize: Size(220, 35),),
                                        onPressed: () {
                                          HapticFeedback.mediumImpact();
                                          guardarTamanoLetraPreferencias(20.0);
                                          Navigator.of(context).pop();
                                        }
                                    ),

                                    ElevatedButton(
                                        child: Text('Letra grande', style: TextStyle(fontSize: 22.0,)),
                                        style: ElevatedButton.styleFrom(primary: Colors.blueGrey, minimumSize: Size(220, 35),),
                                        onPressed: () {
                                          HapticFeedback.mediumImpact();
                                          guardarTamanoLetraPreferencias(22.0);
                                          Navigator.of(context).pop();
                                        }
                                    ),

                                    ElevatedButton(
                                        child: Text('Letra muy grande', style: TextStyle(fontSize: 24.0,)),
                                        style: ElevatedButton.styleFrom(primary: Colors.blueGrey, minimumSize: Size(220, 35),),
                                        onPressed: () {
                                          HapticFeedback.mediumImpact();
                                          guardarTamanoLetraPreferencias(24.0);
                                          Navigator.of(context).pop();
                                        }
                                    ),

                                  ],
                                ),

                                actions: [
                                  CupertinoDialogAction(
                                    onPressed: () {
                                      HapticFeedback.mediumImpact();
                                      Navigator.of(context).pop();
                                    },
                                    textStyle: TextStyle(color: Color(_myPrimaryColor)),
                                    child: const Text('Regresar'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: const Icon(Icons.format_size),
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container( height: 45.0,  width: 45.0,
                    margin: EdgeInsets.only(left: 110.0),
                    child: FittedBox(
                      child: FloatingActionButton(
                        heroTag: "inicio",
                        backgroundColor: Color(_myAccentColor),
                        onPressed: () {
                          HapticFeedback.mediumImpact();
                          showDialog(
                            context: context,
                            builder: (BuildContext context){
                              return CupertinoAlertDialog(
                                title: Text('¿Terminar rosario?', style: TextStyle(color: Color(_myPrimaryColor), fontSize: _mySizeFont, fontWeight: FontWeight.bold)),
                                content: Text('Perderas el progreso actual', style: TextStyle(fontSize: _mySizeFont-2)),

                                actions: [
                                  CupertinoDialogAction(
                                    onPressed: () {
                                      HapticFeedback.mediumImpact();
                                      Navigator.of(context).pop();
                                    },
                                    textStyle: TextStyle(color: Color(_myPrimaryColor)),
                                    child: const Text('No'),
                                  ),
                                  CupertinoDialogAction(
                                    onPressed: () {
                                      HapticFeedback.mediumImpact();
                                      Navigator.of(context).pushNamedAndRemoveUntil('/Inicio', (Route<dynamic> route) => false);
                                    },
                                    textStyle: TextStyle(color: Color(_myPrimaryColor)),
                                    child: const Text('Si'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: const Icon(Icons.home),
                      ),
                    ),
                  ),
                ),

              ]
          )
      ),
    );
  }

  Future<void> obtenerPreferencias() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    setState(() {
      _myAccentColor = preferences.get('accentColorApp') ?? 0xff1976d2;
      _myPrimaryColor = preferences.get('primaryColorApp') ?? 0xff004ba0;
      _mySizeFont = preferences.get('sizeFontApp') ?? 16.0;
      _myMisterio = preferences.get('misterioApp') ?? "Gozosos";
    });
  }

  Future<void> guardarTamanoLetraPreferencias(double elTamanoLetra) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setDouble('sizeFontApp', elTamanoLetra);
  }
}