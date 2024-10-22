import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/constants/ui_helper.dart';
import 'package:portfolio/interface/landing_page/landing_page.dart';
import 'package:portfolio/services/language/language_cubit.dart';
import 'package:portfolio/services/index/index_cubit.dart';

void mainDelegate() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LanguageCubit(),
        ),
        BlocProvider(
          create: (context) => IndexCubit(PageIndex.home),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown
          },
        ),
        routes: {
          '/': (context) => const LandingPage(),
          '/home': (context) => const LandingPage(),
          '/about': (context) => const LandingPage(),
        },
        theme: ThemeData(
          textTheme: textTheme,
          textButtonTheme: textButtonTheme,
        ),
      ),
    );
  }
}
