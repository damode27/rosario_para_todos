//EensdD
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

class Gf extends StatefulWidget{
  const Gf({Key key}) : super(key: key);

  @override
  _GfState createState() => _GfState();
}

class _GfState extends State<Gf> {
  int _myAccentColor = 0xff000000;
  int _myPrimaryColor = 0xff000000;
  double _mySizeFont = 16.0;

  @override
  Widget build(BuildContext context) {
    setState(() {
      obtenerPreferencias();
    });
    String image = 'rosario_background_letanias.jpg';
    String rutasiguiente = '/Gg';
    String titulo = 'Letanías de la Virgen María';
    String contenido = 'Señor, ten piedad\n\n'
        'Cristo, ten piedad\n\n'
        'Señor, ten piedad.\n\n'
        'Cristo, óyenos.\n\n'
        'Cristo, escúchanos.\n\n\n'
        'Dios, Padre celestial, ten piedad de nosotros.\n\n'
        'Dios, Hijo, Redentor del mundo, ten piedad de nosotros.\n\n'
        'Dios, Espíritu Santo, ten piedad de nosotros.\n\n'
        'Santísima Trinidad, un solo Dios, ten piedad de nosotros.\n\n\n'
        'Santa María, ruega por nosotros.\n\n'
        'Santa Madre de Dios, ruega por nosotros.\n\n'
        'Santa Virgen de las Vírgenes, ruega por nosotros.\n\n'
        'Madre de Cristo, ruega por nosotros.\n\n'
        'Madre de la Iglesia, ruega por nosotros.\n\n'
        'Madre de la misericordia, ruega por nosotros.\n\n'
        'Madre de la divina gracia, ruega por nosotros.\n\n'
        'Madre de la esperanza, ruega por nosotros.\n\n'
        'Madre purísima, ruega por nosotros.\n\n'
        'Madre castísima, ruega por nosotros.\n\n'
        'Madre siempre virgen, ruega por nosotros.\n\n'
        'Madre inmaculada, ruega por nosotros.\n\n'
        'Madre amable, ruega por nosotros.\n\n'
        'Madre admirable, ruega por nosotros.\n\n'
        'Madre del buen consejo, ruega por nosotros.\n\n'
        'Madre del Creador, ruega por nosotros.\n\n'
        'Madre del Salvador, ruega por nosotros.\n\n'
        'Virgen prudentísima, ruega por nosotros.\n\n'
        'Virgen digna de veneración, ruega por nosotros.\n\n'
        'Virgen digna de alabanza, ruega por nosotros.\n\n'
        'Virgen poderosa, ruega por nosotros.\n\n'
        'Virgen clemente, ruega por nosotros.\n\n'
        'Virgen fiel, ruega por nosotros.\n\n'
        'Espejo de justicia, ruega por nosotros.\n\n'
        'Trono de la sabiduría, ruega por nosotros.\n\n'
        'Causa de nuestra alegría, ruega por nosotros.\n\n'
        'Vaso espiritual, ruega por nosotros.\n\n'
        'Vaso digno de honor, ruega por nosotros.\n\n'
        'Vaso de insigne devoción, ruega por nosotros.\n\n'
        'Rosa mística, ruega por nosotros.\n\n'
        'Torre de David, ruega por nosotros.\n\n'
        'Torre de marfil, ruega por nosotros.\n\n'
        'Casa de oro, ruega por nosotros.\n\n'
        'Arca de la Alianza, ruega por nosotros.\n\n'
        'Puerta del cielo, ruega por nosotros.\n\n'
        'Estrella de la mañana, ruega por nosotros.\n\n'
        'Salud de los enfermos, ruega por nosotros.\n\n'
        'Refugio de los pecadores, ruega por nosotros.\n\n'
        'Consuelo de los migrantes, ruega por nosotros.\n\n'
        'Consoladora de los afligidos, ruega por nosotros.\n\n'
        'Auxilio de los cristianos, ruega por nosotros.\n\n'
        'Reina de los Ángeles, ruega por nosotros.\n\n'
        'Reina de los Patriarcas, ruega por nosotros.\n\n'
        'Reina de los Profetas, ruega por nosotros.\n\n'
        'Reina de los Apóstoles, ruega por nosotros.\n\n'
        'Reina de los Mártires, ruega por nosotros.\n\n'
        'Reina de los Confesores, ruega por nosotros.\n\n'
        'Reina de las Vírgenes, ruega por nosotros.\n\n'
        'Reina de todos los Santos, ruega por nosotros.\n\n'
        'Reina concebida sin pecado original, ruega por nosotros.\n\n'
        'Reina asunta a los Cielos, ruega por nosotros.\n\n'
        'Reina del Santísimo Rosario, ruega por nosotros.\n\n'
        'Reina de la familia, ruega por nosotros.\n\n'
        'Reina de la paz, ruega por nosotros.\n\n\n'
        'Cordero de Dios, que quitas el pecado del mundo,\n'
        'perdónanos, Señor.\n\n'
        'Cordero de Dios, que quitas el pecado del mundo,\n'
        'escúchanos, Señor.\n\n'
        'Cordero de Dios, que quitas el pecado del mundo,\n'
        'ten misericordia de nosotros.\n\n'
        'ORACIÓN:\n'
        'Te rogamos nos concedas, Señor Dios nuestro, gozar de continua salud '
        'de alma y cuerpo, y por la gloriosa intercesión de la bienaventurada '
        'siempre Virgen María, vernos libres de las tristezas de la vida '
        'presente y disfrutar de las alegrías eternas.\n'
        'Por Cristo nuestro Señor. Amén.';

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
                    alignment: Alignment.topCenter,
                    child: Container(
                        //height: 510.0,
                        margin: EdgeInsets.only(top:70.0, bottom: 70.0),
                        child: ListView(
                          padding: EdgeInsets.only(top: 0.0),
                          children: [
                            Text(contenido,
                                textAlign: TextAlign.left,
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