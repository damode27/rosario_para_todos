//EensdD
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

class Da2 extends StatefulWidget{
  const Da2({Key key}) : super(key: key);

  @override
  _Da2State createState() => _Da2State();
}

class _Da2State extends State<Da2> {
  int _myAccentColor = 0xff000000;
  int _myPrimaryColor = 0xff000000;
  double _mySizeFont = 16.0;
  String _myMisterio = " ";

  @override
  Widget build(BuildContext context) {
    setState(() {
      obtenerPreferencias();
    });

    String image = 'da.jpg';
    String rutasiguiente = '/Da3';
    String titulo = _myMisterio;
    String contenido = 'x';

    switch(_myMisterio){
      case 'Gozosos': {
        titulo = 'Tercer Misterio Gozoso';
        contenido = 'El Nacimiento del Hijo de Dios en el portal de Belén:\n\n'
            '«Sucedió que por aquellos días salió un edicto de César Augusto '
            'ordenando que se empadronase todo el mundo. Este primer '
            'empadronamiento tuvo lugar siendo Cirino gobernador de Siria. '
            'Iban todos a empadronarse, cada uno a su ciudad.\n'
            'Subió también José desde Galilea, de la ciudad de Nazaret, a Judea, a la ciudad de '
            'David, que se llama Belén, por ser él de la casa y familia de '
            'David, para empadronarse con María, su esposa, que estaba encinta. '
            'Y sucedió que, mientras ellos estaban allí, se le cumplieron los '
            'días del alumbramiento, y dio a luz a su hijo primogénito, le '
            'envolvió en pañales y le acostó en un pesebre, porque no tenían '
            'sitio en el alojamiento». (Lc 2,1-7).';
      } break;

      case 'Dolorosos': {
        titulo = 'Tercer Misterio Doloroso';
        contenido = 'La coronación de espinas:\n\n'
            '«Entonces los soldados del procurador llevaron consigo a Jesús al '
            'pretorio y reunieron alrededor de él a toda la cohorte. Lo '
            'desnudaron y le echaron encima un manto de púrpura y, trenzando '
            'una corona de espinas, se la pusieron sobre la cabeza, y en su '
            'mano derecha una caña, y doblando la rodilla delante de él, le '
            'hacían burla diciendo: "Salve, Rey de los judíos"». (Mt 27, 27-29).';
      } break;

      case 'Gloriosos': {
        titulo = 'Tercer Misterio Glorioso';
        contenido = 'La venida del Espíritu Santo:\n\n '
            '«Al llegar el día de Pentecostés, estaban todos reunidos en un '
            'mismo lugar. De repente vino del cielo un ruido como el de una '
            'ráfaga de viento impetuoso, que llenó toda la casa en la que se '
            'encontraban. Se les aparecieron unas lenguas como de fuego que se '
            'repartieron y se posaron sobre cada uno de ellos; quedaron todos '
            'llenos del Espíritu Santo y se pusieron a hablar en otras lenguas, '
            'según el Espíritu les concedía expresarse». (Hch 2, 1-4).';
      } break;

      case 'Luminosos': {
        titulo = 'Tercer Misterio Luminoso';
        contenido = 'El anuncio del Reino de Dios:\n\n'
            '«"El tiempo se ha cumplido y el Reino de Dios está cerca; '
            'convertíos y creed en el Evangelio"». (Mc 1, 15).';
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