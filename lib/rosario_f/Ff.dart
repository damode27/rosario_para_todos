//EensdD
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

class Ff extends StatefulWidget{
  const Ff({Key key}) : super(key: key);

  @override
  _FfState createState() => _FfState();
}

class _FfState extends State<Ff> {
  int _myAccentColor = 0xff000000;
  int _myPrimaryColor = 0xff000000;
  double _mySizeFont = 16.0;

  @override
  Widget build(BuildContext context) {
    setState(() { obtenerPreferencias(); });

    String image = 'ff.jpg';
    String rutasiguiente = '/Fg';
    String titulo = 'Ave María';
    String contenido = 'Dios te salve, María; llena eres de gracia; el Señor '
        'es contigo; bendita Tú eres entre todas las mujeres, y bendito es el '
        'fruto de tu vientre, Jesús.'
        '\n\nSanta María, Madre de Dios, ruega por nosotros pecadores, ahora y en '
        'la hora de nuestra muerte. Amén.';

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
    });
  }

  Future<void> guardarTamanoLetraPreferencias(double elTamanoLetra) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setDouble('sizeFontApp', elTamanoLetra);
  }
}