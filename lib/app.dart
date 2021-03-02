import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/search_history/cubit.dart';
import 'package:weather_app/blocs/search_weather/cubit.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/repository/db.dart';
import 'package:weather_app/route.dart';
import 'package:weather_app/common/theme.dart';
import 'package:weather_app/view/search/screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  Future<bool> _loadInitialData() async {
    logger.i('Initializing storage');
    try {
      await DatabaseRepository().init();
      return true;
    } catch (e) {
      logger.e(
          'Error during initialization internal storage and database helper.');
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _loadInitialData(),
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.hasData) {
          return MultiBlocProvider(
            // ignore: always_specify_types
            providers: [
              BlocProvider<SearchCubit>(
                create: (BuildContext context) {
                  return SearchCubit();
                },
                child: SearchScreen(),
              ),
              BlocProvider<SearchHistoryCubit>(
                create: (BuildContext context) {
                  return SearchHistoryCubit();
                },
                child: SearchScreen(),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Weather App',
              theme: buildAppTheme(),
              home: CustomSplash(
                imagePath: 'assets/images/brand/logo.png',
                logoSize: 50,
                duration: 2000,
                home: SearchScreen(),
              ),
              onGenerateRoute: Routes.getRouteGenerate,
            ),
          );
        } else {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
          );
        }
      },
    );
  }
}
