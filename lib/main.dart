import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gafar_game_list/pages/home/bloc/home_bloc.dart';
import 'package:gafar_game_list/pages/home/home_page.dart';
import 'package:gafar_game_list/utils/dio.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(const GameNewsApp());
}

class GameNewsApp extends StatelessWidget {
  const GameNewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(create: (_) => HomeBloc()),
      ],
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ),
        child: MaterialApp(
          theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
          home: const HomePage(),
        ),
      ),
    );
  }
}
