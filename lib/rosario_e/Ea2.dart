//EensdD
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

class Ea2 extends StatefulWidget{
  const Ea2({Key key}) : super(key: key);

  @override
  _Ea2State createState() => _Ea2State();
}

class _Ea2State extends State<Ea2> {
  int _myAccentColor = 0xff000000;
  int _myPrimaryColor = 0xff000000;
  double _mySizeFont = 16.0;
  String _myMisterio = " ";

  @override
  Widget build(BuildContext context) {
    setState(() {
      obtenerPreferencias();
    });

    String image = 'ea.jpg';
    String rutasiguiente = '/Ea3';
    String titulo = _myMisterio;
    String contenido = 'x';

    switch(_myMisterio){
      case 'Gozosos': {
        titulo = 'Cuarto Misterio Gozoso';
        contenido = 'La presentación de Jesús en el Templo:\n\n'
            '«Cuando se cumplieron los ocho días para circuncidarle, se le dio '
            'el nombre de Jesús, como lo había llamado el ángel antes de ser '
            'concebido en el seno. Cuando se cumplieron los días de la '
            'purificación de ellos, según la Ley de Moisés, llevaron a Jesús a '
            'Jerusalén para presentarle al Señor, como está escrito en la Ley '
            'del Señor: Todo varón primogénito será consagrado al Señor y para '
            'ofrecer en sacrificio un par de tórtolas o dos pichones, conforme '
            'a lo que se dice en la Ley del Señor». (Lc 2, 21-24).';
      } break;

      case 'Dolorosos': {
        titulo = 'Cuarto Misterio Doloroso';
        contenido = 'Jesús con la Cruz a cuestas camino del Calvario:\n\n'
            '«Y obligaron a uno que pasaba, a Simón de Cirene, que volvía del '
            'campo, el padre de Alejandro y de Rufo, a que llevara su cruz. Lo '
            'condujeron al lugar del Gólgota, que quiere decir de la '
            '"Calavera"». (Mc 15, 21-22).';
      } break;

      case 'Gloriosos': {
        titulo = 'Cuarto Misterio Glorioso';
        contenido = 'La Asunción de María al cielo:\n\n '
            '«Todas las generaciones me llamarán bienaventurada porque el Señor '
            'ha hecho obras grandes en mí». (Lc 1, 48-49).';
      } break;

      case 'Luminosos': {
        titulo = 'Cuarto Misterio Luminoso';
        contenido = 'La Transfiguración:\n\n'
            '«Seis días después, Jesús tomó consigo a Pedro, a Santiago y a su '
            'hermano Juan, y los llevó aparte, a un monte alto. Y se '
            'transfiguró delante de ellos: su rostro se puso brillante como el '
            'sol y sus vestidos se volvieron blancos como la luz». (Mt 17, 1-2).';
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