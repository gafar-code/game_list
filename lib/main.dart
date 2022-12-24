import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game/pages/detail_page/bloc/detail_bloc.dart';
import 'package:game/pages/home/bloc/home_bloc.dart';
import 'package:game/router/app_router.dart';
import 'package:game/utils/dio.dart';
import 'package:game/utils/helpers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await Helper.loadPrecacheIcons();
  runApp(const GameNewsApp());
}

class GameNewsApp extends StatelessWidget {
  const GameNewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(create: (_) => HomeBloc()),
        BlocProvider(create: (_) => DetailBloc()),
      ],
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.dark,
          theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
          initialRoute: AppRoutes.homePage,
          onGenerateRoute: AppRoutes.onGenerateRoute,
        ),
      ),
    );
  }
}
