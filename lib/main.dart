import 'package:crud_firestore/models/user_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'providers/sessao_provider.dart';

import './models/userfisio_manager.dart';
import 'screens/addeditsessao_screen.dart';
import 'screens/homefisio_screen.dart';
import 'screens/home_screen.dart';
import 'screens/sessoesfisioscreen.dart';
import './screens/usertype_screen.dart';
import 'screens/signup/signuppaciente_screen.dart';
import 'screens/signup/signupfisio_screen.dart';
import 'screens/login/fisiologin_screen.dart';
import 'screens/login/pacientelogin_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SessaoProvider()),
        ChangeNotifierProvider(create: (_) => UserFisioManager()),
        ChangeNotifierProvider(create: (_) => UserManagerPaciente()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          accentColor: Colors.amberAccent[700],
          primaryColor: Color.fromRGBO(202, 15, 15, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          //HomeScreen.route: (_) => HomeFisioScreen(),
          //SessoesFisioScreen.route: (_) => SessoesFisioScreen(),
          EditaSessaoScreen.route: (_) => EditaSessaoScreen(),
          UserTypeScreen.route: (_) => UserTypeScreen(),
          //LaunchScreen.route: (_) => LaunchScreen(),
          PacienteLoginScreen.route: (_) => PacienteLoginScreen(),
          SignUpPacienteScreen.route: (_) => SignUpPacienteScreen(),
          FisioLoginScreen.route: (_) => FisioLoginScreen(),
          SignUpFisioScreen.route: (_) => SignUpFisioScreen(),
        },
      ),
    );
  }
}
