import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:sestion_7_abdullah_api_news_app/pac_news_App/components/components.dart';
import 'package:sestion_7_abdullah_api_news_app/pac_news_App/news_app/cubit/cubit.dart';
import 'package:sestion_7_abdullah_api_news_app/pac_news_App/news_app/cubit/state.dart';


class sport_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewCubit , NewsStates>(
        listener: (context, state){},
        builder: (context, state)
        {
          var list =NewCubit().get(context).sports;
          return ConditionalBuilder(
            condition:list.length>0,
            builder: (context ) =>
                ListView.separated
                  (
                    itemBuilder: (context , index)=>builderArticalItem(list [index],context),
                    separatorBuilder: (context , index)=>myDiveder(),
                    itemCount: 5
                ),
            fallback: (context) => Center(child:CircularProgressIndicator()),
          );
        }

    );
  }
}
