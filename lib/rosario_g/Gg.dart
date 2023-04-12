//EensdD
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Gg extends StatefulWidget{
  const Gg({Key key}) : super(key: key);

  @override
  _GgState createState() => _GgState();
}

class _GgState extends State<Gg> {
  int _myAccentColor = 0xff000000;
  int _myPrimaryColor = 0xff000000;
  double _mySizeFont = 16.0;
  int _myContadorLocal = 0;
  //int _myContadorOnline = 0;


  @override
  Widget build(BuildContext context) {
    setState(() {
      obtenerPreferencias();
    });
    String image = 'aa.jpg';
    String rutasiguiente = '/Inicio';
    String titulo = 'Señal de la Cruz';
    String contenido = 'Por la señal de la Santa Cruz de nuestros '
        'enemigos, líbranos Señor Dios nuestro.\n\nEn el nombre del '
        'Padre, del Hijo y del Espíritu Santo. Amen.';

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
                  child: ElevatedButton(
                    child: const Text('FINALIZAR', style: TextStyle(fontSize: 18.0,)),
                    style: ElevatedButton.styleFrom(primary: Color(_myAccentColor), minimumSize: Size(150, 45),),
                    onPressed: () {
                      HapticFeedback.mediumImpact();
                      showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return CupertinoAlertDialog(
                            title: Text('Finalizar Rosario', style: TextStyle(color: Color(_myPrimaryColor), fontSize: _mySizeFont, fontWeight: FontWeight.bold)),
                            content: Text('Puedes subir este Rosario para que cuente como uno más en la Comunidad que utiliza esta App alrededor del mundo', style: TextStyle(fontSize: _mySizeFont-2)),

                            actions: [
                              CupertinoDialogAction(
                                textStyle: TextStyle(color: Color(_myPrimaryColor)),
                                child: const Text('Finalizar y subir a la Comunidad'),
                                onPressed: () async {
                                  HapticFeedback.mediumImpact();

                                  try {
                                    final result = await InternetAddress.lookup('google.com');
                                    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
                                      //print('connected');
                                      FirebaseFirestore.instance.collection("rosarios").add({
                                        'fecha': DateTime.now(),
                                        'num': _myAccentColor
                                      });

                                      _myContadorLocal = _myContadorLocal+1;
                                      guardarContadorLocalPreferencias(_myContadorLocal);

                                      Navigator.of(context).pushNamedAndRemoveUntil(rutasiguiente, (Route<dynamic> route) => false);

                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context){
                                            return CupertinoAlertDialog(
                                              title: Text("¡Has completado un nuevo Rosario!", style: TextStyle(color: Color(_myPrimaryColor), fontSize: _mySizeFont, fontWeight: FontWeight.bold)),
                                              content: Text("Se ha agregado al contador de la Comunidad y a tu contador personal", style: TextStyle(fontSize: _mySizeFont-2)),
                                              actions: [
                                                CupertinoDialogAction(
                                                  onPressed: () {
                                                    HapticFeedback.mediumImpact();
                                                    Navigator.of(context).pop();
                                                  },
                                                  textStyle: TextStyle(color: Color(_myPrimaryColor)),
                                                  child: const Text('Aceptar'),
                                                ),
                                              ],
                                            );
                                          }
                                      );
                                    }
                                  } on SocketException catch (_) {
                                    //print('not connected');
                                    Navigator.of(context).pop();
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context){
                                          return CupertinoAlertDialog(

                                            content: Text('No es posible agregar este rosario a la Comunidad.'
                                                '\nRevise su conexión a Internet e intente de nuevo.', style: TextStyle(fontSize: _mySizeFont-2,)),

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
                                        }
                                    );
                                  }

                                },
                              ),

                              CupertinoDialogAction(
                                textStyle: TextStyle(color: Color(_myPrimaryColor)),
                                child: const Text('Solo Finalizar'),
                                onPressed: () {
                                  HapticFeedback.mediumImpact();
                                  _myContadorLocal = _myContadorLocal+1;
                                  guardarContadorLocalPreferencias(_myContadorLocal);
                                  Navigator.of(context).pushNamedAndRemoveUntil(rutasiguiente, (Route<dynamic> route) => false);
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return CupertinoAlertDialog(
                                          title: Text("¡Has completado un nuevo Rosario!", style: TextStyle(color: Color(_myPrimaryColor), fontSize: _mySizeFont, fontWeight: FontWeight.bold)),
                                          content: Text("Se ha agregado a tu contador personal", style: TextStyle(fontSize: _mySizeFont-2)),
                                          actions: [
                                            CupertinoDialogAction(
                                              onPressed: () {
                                                HapticFeedback.mediumImpact();
                                                Navigator.of(context).pop();
                                              },
                                              textStyle: TextStyle(color: Color(_myPrimaryColor)),
                                              child: const Text('Aceptar'),
                                            ),
                                          ],
                                        );
                                      }
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
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
      _myContadorLocal = preferences.get('contadorLocalApp') ?? 0;
    });
  }

  Future<void> guardarTamanoLetraPreferencias(double elTamanoLetra) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setDouble('sizeFontApp', elTamanoLetra);
  }

  Future<void> guardarContadorLocalPreferencias(int elContadorLocal) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt('contadorLocalApp', elContadorLocal);
  }
}