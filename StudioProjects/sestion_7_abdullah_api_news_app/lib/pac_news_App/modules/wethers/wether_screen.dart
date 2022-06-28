import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sestion_7_abdullah_api_news_app/pac_news_App/modules/wethers/wether_model.dart';
import 'package:sestion_7_abdullah_api_news_app/pac_news_App/news_app/cubit/cubit.dart';
import 'package:sestion_7_abdullah_api_news_app/pac_news_App/news_app/cubit/state.dart';
import '../../components/components.dart';
wether_new weht =wether_new ();
dynamic x='sdsadsadas';

class wether_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    NewCubit().weather_inf();
    print("1");
    print('${x}');
    NewCubit().get(context).weather_inf();
    x=weht.main?.temp;
    print('2');
    print(x);
    NewCubit().get(context).weather_inf();
    print('3');
    print(x);
    return Center(
         child: Row
          (
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment:MainAxisAlignment.center,
          children: [Text('${NewCubit().get(context).we.main?.temp}')],

    ));
  }


}
