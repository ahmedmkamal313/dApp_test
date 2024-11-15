import 'package:flutter/material.dart';
import 'package:testapp/utils/Constants.dart';

Widget unitCardWidget(){
  Constants constants = Constants();
  
  return Container(
    height: 300,
    decoration: BoxDecoration(
      color: constants.backgroundColor,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Column(
      children: [
        Image.network("https://media.istockphoto.com/id/2175713697/photo/bright-living-room-with-fireplace-and-scandinavian-design.jpg?s=1024x1024&w=is&k=20&c=Lwcn2nnzvTN2f5xqQKsKMyUZpVIqzF2WfIyX340xzhE=",
         fit: BoxFit.cover,),
        Text("Unit #1"),
        Row(
          children: [
            Icon(Icons.ice_skating),
            Text("1.0 ETH"),

          ],
        )

      ],
    ),
  );
}