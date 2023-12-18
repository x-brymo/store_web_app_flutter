import 'package:flutter/material.dart';
import 'package:store_web_app/screens/dashboard/widgets/custom_row.dart';
import 'package:store_web_app/utils/plugin/query_plugin.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children:<Widget> [
          Card(
            color: Colors.deepOrange,
            child: SizedBox(
              width: 250, height: context.heightScreen / 0.12,
              child:  Column(
                children: [
                  Center(child: Text("Store", style: Theme.of(context).textTheme.headlineMedium,),),
                  boxSizeHeight(context, 21),
                  const CustomRowDashBoard(typeName: "Profile", icon: Icons.person,),
                  const CustomRowDashBoard(typeName: "Profile", icon: Icons.person,),
                  const CustomRowDashBoard(typeName: "Profile", icon: Icons.person,),
                  const CustomRowDashBoard(typeName: "Profile", icon: Icons.person,),
                  const CustomRowDashBoard(typeName: "Profile", icon: Icons.person,),
                  const CustomRowDashBoard(typeName: "Profile", icon: Icons.person,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}