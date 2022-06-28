import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sestion_7_abdullah_api_news_app/pac_news_App/news_app/cubit/cubit.dart';
import 'package:sestion_7_abdullah_api_news_app/pac_news_App/news_app/news_layout.dart';
import 'package:sestion_7_abdullah_api_news_app/pac_news_App/remote/dio_helper.dart';

main() {

  DioHelper.inti();
  DioHelper_wether.inti();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> NewCubit()..getBusiness()..weather_inf()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark
            ),
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
                color: Colors.black ,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            iconTheme: IconThemeData(color: Colors.black ,size: 25),
            elevation: 0.0
          ),
          scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme:BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.deepOrangeAccent,
            elevation: 40.0,
            backgroundColor: Colors.white

          ),
          textTheme:TextTheme
            (
              bodyText1: TextStyle(fontSize: 15, fontWeight: FontWeight.w600 ,color: Colors.black)

          ),
        ),
        darkTheme:
        ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme:  AppBarTheme(
                backwardsCompatibility: false,
                systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor:HexColor('333739'),
                    statusBarIconBrightness: Brightness.light
                ),
                backgroundColor: HexColor('333739'),
                titleTextStyle: TextStyle(
                    color: Colors.white ,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                iconTheme: IconThemeData(color: Colors.white ,size: 25),
                elevation: 0.0,
            ),
            scaffoldBackgroundColor: HexColor('333739'),
            bottomNavigationBarTheme:BottomNavigationBarThemeData(
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Colors.grey,
                selectedItemColor: Colors.deepOrangeAccent,
                elevation: 40.0,
              backgroundColor: HexColor('333739'),

            ),
          textTheme:TextTheme
            (
               bodyText1: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600 ,color: Colors.white)

          ),
        ),
        themeMode:ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: NewsLayout(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(),

    );
  }
}
