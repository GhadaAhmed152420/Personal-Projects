import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news_app/shared/components/components.dart';
import 'package:news_app/shared/cubit/AppCubit.dart';
import 'package:news_app/shared/cubit/cubit.dart';
import 'package:news_app/shared/cubit/states.dart';

class SearchScreen extends StatelessWidget{
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state){},
      builder: (context, state) {
        var list = NewsCubit.get(context).search;
        return Scaffold(
          appBar:AppBar(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  style: TextStyle(color: AppCubit.get(context).isDark ? Colors.white : Colors.black),
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    NewsCubit.get(context).getSearch(value);
                  },
                  validator:(value){
                    if(value.isEmpty){
                      return "search must not be empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Search',
                    labelStyle: TextStyle(color:Colors.grey),
                    prefixIcon: Icon(Icons.search,
                    color: Colors.grey,),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey,),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              Expanded(child: articleBuilder(list, context, isSearch: true)),
            ],
          ),
        );
      },
    );
  }

}

