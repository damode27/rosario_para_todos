//EensdD

import 'dart:io';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'rosario_a/Aa.dart';
import 'rosario_a/Aa1.dart';
import 'rosario_a/Aa2.dart';
import 'rosario_b/Ba.dart';
import 'rosario_b/Ba1.dart';
import 'rosario_b/Ba2.dart';
import 'rosario_b/Bb.dart';
import 'rosario_b/Bc.dart';
import 'rosario_b/Bd.dart';
import 'rosario_b/Be.dart';
import 'rosario_b/Bf.dart';
import 'rosario_b/Bg.dart';
import 'rosario_b/Bh.dart';
import 'rosario_b/Bi.dart';
import 'rosario_b/Bj.dart';
import 'rosario_b/Bk.dart';
import 'rosario_c/Ca.dart';
import 'rosario_c/Ca1.dart';
import 'rosario_c/Ca2.dart';
import 'rosario_c/Ca3.dart';
import 'rosario_c/Cb.dart';
import 'rosario_c/Cc.dart';
import 'rosario_c/Cd.dart';
import 'rosario_c/Ce.dart';
import 'rosario_c/Cf.dart';
import 'rosario_c/Cg.dart';
import 'rosario_c/Ch.dart';
import 'rosario_c/Ci.dart';
import 'rosario_c/Cj.dart';
import 'rosario_c/Ck.dart';
import 'rosario_d/Da.dart';
import 'rosario_d/Da1.dart';
import 'rosario_d/Da2.dart';
import 'rosario_d/Da3.dart';
import 'rosario_d/Db.dart';
import 'rosario_d/Dc.dart';
import 'rosario_d/Dd.dart';
import 'rosario_d/De.dart';
import 'rosario_d/Df.dart';
import 'rosario_d/Dg.dart';
import 'rosario_d/Dh.dart';
import 'rosario_d/Di.dart';
import 'rosario_d/Dj.dart';
import 'rosario_d/Dk.dart';
import 'rosario_e/Ea.dart';
import 'rosario_e/Ea1.dart';
import 'rosario_e/Ea2.dart';
import 'rosario_e/Ea3.dart';
import 'rosario_e/Eb.dart';
import 'rosario_e/Ec.dart';
import 'rosario_e/Ed.dart';
import 'rosario_e/Ee.dart';
import 'rosario_e/Ef.dart';
import 'rosario_e/Eg.dart';
import 'rosario_e/Eh.dart';
import 'rosario_e/Ei.dart';
import 'rosario_e/Ej.dart';
import 'rosario_e/Ek.dart';
import 'rosario_f/Fa.dart';
import 'rosario_f/Fa1.dart';
import 'rosario_f/Fa2.dart';
import 'rosario_f/Fa3.dart';
import 'rosario_f/Fb.dart';
import 'rosario_f/Fc.dart';
import 'rosario_f/Fd.dart';
import 'rosario_f/Fe.dart';
import 'rosario_f/Ff.dart';
import 'rosario_f/Fg.dart';
import 'rosario_f/Fh.dart';
import 'rosario_f/Fi.dart';
import 'rosario_f/Fj.dart';
import 'rosario_f/Fk.dart';
import 'rosario_g/Ga.dart';
import 'rosario_g/Ga1.dart';
import 'rosario_g/Ga2.dart';
import 'rosario_g/Gb.dart';
import 'rosario_g/Gc.dart';
import 'rosario_g/Gd.dart';
import 'rosario_g/Ge.dart';
import 'rosario_g/Gf.dart';
import 'rosario_g/Gg.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Color(0x4411232D),),
    title: 'Rosario para todos',

    initialRoute: '/',
    routes: {
      '/Inicio': (context) => const Inicio(),
      '/Aa': (context) => const Aa(),
    },

    onGenerateRoute: (RouteSettings settings) {
      switch (settings.name) {
        case "/Aa1": return PageRouteBuilder(pageBuilder: (_, __, ___) => Aa1());
        case "/Aa2": return PageRouteBuilder(pageBuilder: (_, __, ___) => Aa2());
        case "/Ba": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ba());
        case "/Ba1": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ba1());
        case "/Ba2": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ba2());
        case "/Bb": return PageRouteBuilder(pageBuilder: (_, __, ___) => Bb());
        case "/Bc": return PageRouteBuilder(pageBuilder: (_, __, ___) => Bc());
        case "/Bd": return PageRouteBuilder(pageBuilder: (_, __, ___) => Bd());
        case "/Be": return PageRouteBuilder(pageBuilder: (_, __, ___) => Be());
        case "/Bf": return PageRouteBuilder(pageBuilder: (_, __, ___) => Bf());
        case "/Bg": return PageRouteBuilder(pageBuilder: (_, __, ___) => Bg());
        case "/Bh": return PageRouteBuilder(pageBuilder: (_, __, ___) => Bh());
        case "/Bi": return PageRouteBuilder(pageBuilder: (_, __, ___) => Bi());
        case "/Bj": return PageRouteBuilder(pageBuilder: (_, __, ___) => Bj());
        case "/Bk": return PageRouteBuilder(pageBuilder: (_, __, ___) => Bk());
        case "/Ca": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ca());
        case "/Ca1": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ca1());
        case "/Ca2": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ca2());
        case "/Ca3": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ca3());
        case "/Cb": return PageRouteBuilder(pageBuilder: (_, __, ___) => Cb());
        case "/Cc": return PageRouteBuilder(pageBuilder: (_, __, ___) => Cc());
        case "/Cd": return PageRouteBuilder(pageBuilder: (_, __, ___) => Cd());
        case "/Ce": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ce());
        case "/Cf": return PageRouteBuilder(pageBuilder: (_, __, ___) => Cf());
        case "/Cg": return PageRouteBuilder(pageBuilder: (_, __, ___) => Cg());
        case "/Ch": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ch());
        case "/Ci": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ci());
        case "/Cj": return PageRouteBuilder(pageBuilder: (_, __, ___) => Cj());
        case "/Ck": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ck());
        case "/Da": return PageRouteBuilder(pageBuilder: (_, __, ___) => Da());
        case "/Da1": return PageRouteBuilder(pageBuilder: (_, __, ___) => Da1());
        case "/Da2": return PageRouteBuilder(pageBuilder: (_, __, ___) => Da2());
        case "/Da3": return PageRouteBuilder(pageBuilder: (_, __, ___) => Da3());
        case "/Db": return PageRouteBuilder(pageBuilder: (_, __, ___) => Db());
        case "/Dc": return PageRouteBuilder(pageBuilder: (_, __, ___) => Dc());
        case "/Dd": return PageRouteBuilder(pageBuilder: (_, __, ___) => Dd());
        case "/De": return PageRouteBuilder(pageBuilder: (_, __, ___) => De());
        case "/Df": return PageRouteBuilder(pageBuilder: (_, __, ___) => Df());
        case "/Dg": return PageRouteBuilder(pageBuilder: (_, __, ___) => Dg());
        case "/Dh": return PageRouteBuilder(pageBuilder: (_, __, ___) => Dh());
        case "/Di": return PageRouteBuilder(pageBuilder: (_, __, ___) => Di());
        case "/Dj": return PageRouteBuilder(pageBuilder: (_, __, ___) => Dj());
        case "/Dk": return PageRouteBuilder(pageBuilder: (_, __, ___) => Dk());
        case "/Ea": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ea());
        case "/Ea1": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ea1());
        case "/Ea2": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ea2());
        case "/Ea3": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ea3());
        case "/Eb": return PageRouteBuilder(pageBuilder: (_, __, ___) => Eb());
        case "/Ec": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ec());
        case "/Ed": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ed());
        case "/Ee": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ee());
        case "/Ef": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ef());
        case "/Eg": return PageRouteBuilder(pageBuilder: (_, __, ___) => Eg());
        case "/Eh": return PageRouteBuilder(pageBuilder: (_, __, ___) => Eh());
        case "/Ei": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ei());
        case "/Ej": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ej());
        case "/Ek": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ek());
        case "/Fa": return PageRouteBuilder(pageBuilder: (_, __, ___) => Fa());
        case "/Fa1": return PageRouteBuilder(pageBuilder: (_, __, ___) => Fa1());
        case "/Fa2": return PageRouteBuilder(pageBuilder: (_, __, ___) => Fa2());
        case "/Fa3": return PageRouteBuilder(pageBuilder: (_, __, ___) => Fa3());
        case "/Fb": return PageRouteBuilder(pageBuilder: (_, __, ___) => Fb());
        case "/Fc": return PageRouteBuilder(pageBuilder: (_, __, ___) => Fc());
        case "/Fd": return PageRouteBuilder(pageBuilder: (_, __, ___) => Fd());
        case "/Fe": return PageRouteBuilder(pageBuilder: (_, __, ___) => Fe());
        case "/Ff": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ff());
        case "/Fg": return PageRouteBuilder(pageBuilder: (_, __, ___) => Fg());
        case "/Fh": return PageRouteBuilder(pageBuilder: (_, __, ___) => Fh());
        case "/Fi": return PageRouteBuilder(pageBuilder: (_, __, ___) => Fi());
        case "/Fj": return PageRouteBuilder(pageBuilder: (_, __, ___) => Fj());
        case "/Fk": return PageRouteBuilder(pageBuilder: (_, __, ___) => Fk());
        case "/Ga": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ga());
        case "/Ga1": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ga1());
        case "/Ga2": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ga2());
        case "/Gb": return PageRouteBuilder(pageBuilder: (_, __, ___) => Gb());
        case "/Gc": return PageRouteBuilder(pageBuilder: (_, __, ___) => Gc());
        case "/Gd": return PageRouteBuilder(pageBuilder: (_, __, ___) => Gd());
        case "/Ge": return PageRouteBuilder(pageBuilder: (_, __, ___) => Ge());
        case "/Gf": return PageRouteBuilder(pageBuilder: (_, __, ___) => Gf());
        case "/Gg": return PageRouteBuilder(pageBuilder: (_, __, ___) => Gg());

        default: return null;
      }
    },

    debugShowCheckedModeBanner: false,
    home: Inicio(),
  ));
}

class Inicio extends StatefulWidget {
  const Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  //@override
  void initState(){
    super.initState();
    obtenerContadorOnline();
  }

  int _myContadorOnline;
  int _myAccentColor = 0xff000000;
  int _myPrimaryColor = 0xff000000;
  double _mySizeFont = 16.0;
  String _myMisterio = " ";
  int _myContadorLocal = 0;
  String _myCorreo = "damode.rosario@gmail.com";
  String _versionApp = "1.0.4";


  @override
  Widget build(BuildContext context) {

    setState(() {
      obtenerPreferencias();
    });

    initializeDateFormatting('es_MX', null);
    String dia = DateFormat('EEEEE', "es_MX").format(DateTime.now());
    String diaNo = DateFormat('dd', "es_MX").format(DateTime.now());
    String mes = DateFormat('MMMM', "es_MX").format(DateTime.now());

    guardarMisterioPreferencias(dia);

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          brightness: Brightness.dark,
          title: const Text('Rosario para todos'),
          backgroundColor: Color(0x44000000),// status bar brightness
          elevation: 0,
        ),

        body: Container(
          constraints: BoxConstraints.expand(),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('rosario_background.jpg'),
              fit: BoxFit.cover,
            ),
          ),

          child: Stack(
            children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      height: 300.0,
                      child: Column(
                        children: [
                          Text('Misterios ' + _myMisterio, textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: _mySizeFont+4, fontWeight: FontWeight.bold)),

                          Text('' + dia + ', ' + diaNo + ' de ' + mes +'\n', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: _mySizeFont+3)),

                          ElevatedButton(
                            child: const Text('COMENZAR ROSARIO', style: TextStyle(fontSize: 18.0,)),
                            style: ElevatedButton.styleFrom(primary: Color(_myAccentColor), minimumSize: Size(240, 40),),
                            onPressed: () {
                              HapticFeedback.lightImpact();
                              Navigator.pushNamed(context, '/Aa');
                            },

                          ),

                          Text('\n', style: TextStyle(fontSize: 4.0,)),

                          ElevatedButton(
                            child: const Text('ROSARIOS REALIZADOS', textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0,)),
                            style: ElevatedButton.styleFrom(primary: Color(_myAccentColor), minimumSize: Size(220, 35),),
                            onPressed: () async {
                              HapticFeedback.mediumImpact();
                              try {
                                final result = await InternetAddress.lookup('google.com');
                                if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
                                  //print('connected');
                                  obtenerContadorOnline();

                                  if (_myContadorOnline == null)
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error en algunos datos, intente de nuevo")));

                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return CupertinoAlertDialog(
                                          content: Column(
                                            children: [
                                              Text(_myContadorOnline.toString() + ' Rosarios', style: TextStyle(color: Color(_myPrimaryColor), fontSize: _mySizeFont, fontWeight: FontWeight.bold)),
                                              Text('Realizados por ti y la Comunidad que utiliza esta App alrededor del mundo.', style: TextStyle(fontSize: _mySizeFont,)),
                                              Icon(Icons.language),
                                              Text('\n' + _myContadorLocal.toString() + ' Rosarios', style: TextStyle(color: Color(_myPrimaryColor), fontSize: _mySizeFont, fontWeight: FontWeight.bold)),
                                              Text('Realizados por ti en este dispositivo.', style: TextStyle(fontSize: _mySizeFont,)),
                                              Icon(Icons.phone_iphone),
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
                                      }
                                  );

                                }
                              } on SocketException catch (_) {
                                //print('not connected');
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context){
                                      return CupertinoAlertDialog(

                                        content: Column(
                                          children: [
                                            Text('No es posible leer los rosarios realizados por la comunidad.\nRevise su conexion a Internet e intente de nuevo.', style: TextStyle(fontSize: _mySizeFont-2,)),
                                            Text('\n' + _myContadorLocal.toString() + ' Rosarios', style: TextStyle(color: Color(_myPrimaryColor), fontSize: _mySizeFont, fontWeight: FontWeight.bold)),
                                            Text('Realizados en este dispositivo.', style: TextStyle(fontSize: _mySizeFont,)),
                                            Icon(Icons.phone_iphone),
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
                                    }
                                );
                              }


                            },
                          ),

                          ElevatedButton(
                            child: const Text('CONFIGURAR LA APP', textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0,)),
                            style: ElevatedButton.styleFrom(primary: Color(_myAccentColor), minimumSize: Size(220, 35),),
                            onPressed: () {
                              HapticFeedback.mediumImpact();
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context){
                                    return CupertinoAlertDialog(
                                      content: Column(
                                        children: [
                                          Text('Color de la App', style: TextStyle(color: Color(_myPrimaryColor), fontSize: _mySizeFont, fontWeight: FontWeight.bold)),

                                          ElevatedButton(
                                            child: Text('Virgen Maria'),
                                            style: ElevatedButton.styleFrom(primary: Color(0xff1976d2), minimumSize: Size(220, 35),),
                                            onPressed: () {
                                              HapticFeedback.mediumImpact();
                                              guardarColorPreferencias(0xff1976d2, 0xff004ba0);
                                              Navigator.of(context).pop();
                                            }
                                          ),

                                          ElevatedButton(
                                              child: Text('Esperanza'),
                                              style: ElevatedButton.styleFrom(primary: Color(0xff388e3c), minimumSize: Size(220, 35),),
                                              onPressed: () {
                                                HapticFeedback.mediumImpact();
                                                guardarColorPreferencias(0xff388e3c, 0xff00600f);
                                                Navigator.of(context).pop();
                                              }
                                          ),

                                          ElevatedButton(
                                              child: Text('Fuego de la Caridad'),
                                              style: ElevatedButton.styleFrom(primary: Color(0xffd32f2f), minimumSize: Size(220, 35),),
                                              onPressed: () {
                                                HapticFeedback.mediumImpact();
                                                guardarColorPreferencias(0xffd32f2f, 0xff9a0007);
                                                Navigator.of(context).pop();
                                              }
                                          ),

                                          ElevatedButton(
                                              child: Text('Gloria y Pureza'),
                                              style: ElevatedButton.styleFrom(primary: Color(0xffc0ca33), minimumSize: Size(220, 35),),
                                              onPressed: () {
                                                HapticFeedback.mediumImpact();
                                                guardarColorPreferencias(0xffc0ca33, 0xff8c9900);
                                                Navigator.of(context).pop();
                                              }
                                          ),

                                          ElevatedButton(
                                              child: Text('Alegria y Amor'),
                                              style: ElevatedButton.styleFrom(primary: Color(0xffc2185b), minimumSize: Size(220, 35),),
                                              onPressed: () {
                                                HapticFeedback.mediumImpact();
                                                guardarColorPreferencias(0xffc2185b, 0xff8c0032);
                                                Navigator.of(context).pop();
                                              }
                                          ),

                                          ElevatedButton(
                                              child: Text('Humildad y Penitencia'),
                                              style: ElevatedButton.styleFrom(primary: Color(0xff512da8), minimumSize: Size(220, 35),),
                                              onPressed: () {
                                                HapticFeedback.mediumImpact();
                                                guardarColorPreferencias(0xff512da8, 0xff140078);
                                                Navigator.of(context).pop();
                                              }
                                          ),


                                          Text('\nTamaño de Letra', style: TextStyle(color: Color(_myPrimaryColor), fontSize: _mySizeFont, fontWeight: FontWeight.bold)),

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
                                  }
                              );
                            },
                          ),

                          ElevatedButton(
                            child: const Text('MAYOR INFORMACION', textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0,)),
                            style: ElevatedButton.styleFrom(primary: Color(_myAccentColor), minimumSize: Size(220, 35),),
                            onPressed: () {
                              HapticFeedback.mediumImpact();
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context){
                                    return CupertinoAlertDialog(

                                      content: Column(
                                        children: [
                                          Text('Acerca de la App', style: TextStyle(color: Color(_myPrimaryColor), fontSize: _mySizeFont, fontWeight: FontWeight.bold)),
                                          Text('La finalidad de esta App es alentar a todos a rezar el Santo Rosario, en cualquier momento y lugar. También se tiene un conteo de todos los rosarios realizados para motivarnos entre todos a rezar más frecuentemente.\n', style: TextStyle(fontSize: _mySizeFont-2), textAlign: TextAlign.justify,),
                                          Text('Acerca de los Desarrolladores', style: TextStyle(color: Color(_myPrimaryColor), fontSize: _mySizeFont, fontWeight: FontWeight.bold)),
                                          Text('Somos dos jóvenes laicos de la Arquidiócesis de San Luis Potosí, México. La inspiración para crear esta App es aumentar nuestra devoción por el Santo Rosario y propiciar que más personas lo recen.\n', style: TextStyle(fontSize: _mySizeFont-2,), textAlign: TextAlign.justify),

                                          Text('Contacto', style: TextStyle(color: Color(_myPrimaryColor), fontSize: _mySizeFont, fontWeight: FontWeight.bold)),
                                          Text('"Rosario para todos" es completamente gratuita y libre de publicidad, si te agrada nuestro trabajo, puedes ayudarnos dando sugerencias o donando, para mantener y mejorar este proyecto. Contáctanos mediante este correo:\n', style: TextStyle(fontSize: _mySizeFont-2), textAlign: TextAlign.justify),
                                          Text(_myCorreo, style: TextStyle(fontSize: _mySizeFont-2)),

                                          Center(
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(primary: Color(_myAccentColor), minimumSize: Size(220, 35),),
                                              onPressed: () {
                                                HapticFeedback.mediumImpact();
                                                Clipboard.setData(new ClipboardData(text: _myCorreo));
                                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                                    content: Text(_myCorreo + " copiado")
                                                ));
                                              },
                                              child: Text('Copiar dirección de correo', style: TextStyle(fontSize: 14.0,)),
                                            ),
                                          ),

                                          Text('\nReferencias', style: TextStyle(color: Color(_myPrimaryColor), fontSize: _mySizeFont, fontWeight: FontWeight.bold)),
                                          Text('rosariodemaria.org\ncatholic-link.com\nvatican.va', style: TextStyle(fontSize: _mySizeFont-2)),

                                          Text('\nVersion de la App: ' + _versionApp, style: TextStyle(color: Color(_myPrimaryColor))),

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
                                  }
                              );
                            },
                          ),
                        ],
                      )
                  )
              ),
            ],
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

  Future<void> guardarColorPreferencias(int elAccentColor, int elPrimaryColor) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences.setInt('accentColorApp', elAccentColor);
    preferences.setInt('primaryColorApp', elPrimaryColor);
  }

  Future<void> guardarTamanoLetraPreferencias(double elTamanoLetra) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setDouble('sizeFontApp', elTamanoLetra);
  }

  Future<void> guardarMisterioPreferencias(String elDia) async {
    switch(elDia){
      case 'lunes': { _myMisterio = "Gozosos"; } break;
      case 'martes': { _myMisterio = "Dolorosos"; } break;
      case 'miércoles': { _myMisterio = "Gloriosos"; } break;
      case 'jueves': { _myMisterio = "Luminosos"; } break;
      case 'viernes': { _myMisterio = "Dolorosos"; } break;
      case 'sábado': { _myMisterio = "Gozosos"; } break;
      case 'domingo': { _myMisterio = "Gloriosos"; } break;
    }

    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('misterioApp', _myMisterio);
  }

  obtenerContadorOnline() async {
    CollectionReference collectionReference =
    FirebaseFirestore.instance.collection("rosarios");

    QuerySnapshot contadorOnline = await collectionReference.get();
    _myContadorOnline = contadorOnline.docs.length;
  }

}
