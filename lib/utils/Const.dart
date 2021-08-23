import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'AdaptiveTextSize.dart';
import 'Color.dart';

class Utils{

 static AppBar dashboardAppbar({title, BuildContext context})
{

  return AppBar(
    backgroundColor: white,
    elevation: 0.0,
    leading: BackButton(
      color:Colors.black,
    ),
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(fontSize: 16,color: black50),
    ),
    actions: [
      IconButton(
        icon: Icon(
            Feather.archive,
            color: black,
        ),

      )
    ],




  );

}


}