import 'package:flutter/material.dart';
import 'package:store_web_app/utils/plugin/query_plugin.dart';
class CustomRowDashBoard extends StatelessWidget {
 final IconData? icon;
 final String typeName;
 final void Function()? tap;
  const CustomRowDashBoard({super.key, required this.icon, required this.typeName, this.tap});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: GestureDetector(
        onTap: tap,
        child: Card(
          child: Row(
           // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(icon),
             35.getWidth,
              Text(typeName)
            ],
          ),
        ),
      ),
    );
  }
}