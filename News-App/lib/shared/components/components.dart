import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:news_app/modules/webview/web_view_screen.dart';
import 'package:news_app/shared/cubit/states.dart';

Widget buildArticleItem(article, context) => InkWell(
  onTap: () => navigateTo(context, WebViewScreen(article['url'])),
  child:   Padding(

    padding: const EdgeInsets.all(20.0),

    child: Row(

      children: [

        Container(

          width: 120.0,

          height: 120.0,

          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10.0,),

            image: DecorationImage(

              image: NetworkImage(article['urlToImage'] != null ?'${article['urlToImage']}' : 'https://bitsofco.de/content/images/2018/12/broken-1.png'),

              fit: BoxFit.cover,

            ),

          ),

        ),

        SizedBox(

          width: 20.0,

        ),

        Expanded(

          child: Container(

            height: 120.0,

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              mainAxisAlignment: MainAxisAlignment.start,

              mainAxisSize: MainAxisSize.min,

              children: [

                Expanded(

                  child: Text(

                    '${article['title']}',

                    style: Theme.of(context).textTheme.bodyText1,

                    maxLines: 3,

                    overflow: TextOverflow.ellipsis,

                  ),



                ),

                Text(

                  '${article['publishedAt']}',

                  style: TextStyle(

                    color: Colors.grey,

                  ),

                ),

              ],

            ),

          ),

        ),

      ],

    ),

  ),
);

Widget articleBuilder(list, context, {isSearch = false}) => ConditionalBuilder(
  condition: list.length > 0,
  builder:(context) =>
      ListView.separated(
          physics: BouncingScrollPhysics() ,
          itemBuilder: (context, index) => buildArticleItem(list[index],context),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount:10),
  fallback:(context) => isSearch ? Container() : Center(child: CircularProgressIndicator()),
);

void navigateTo(context, widget) => Navigator.push(context,
    MaterialPageRoute(builder: (context) => widget));