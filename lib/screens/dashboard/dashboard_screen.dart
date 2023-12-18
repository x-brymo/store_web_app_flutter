import 'package:flutter/material.dart';
import 'package:store_web_app/screens/dashboard/widgets/custom_row.dart';
import 'package:store_web_app/utils/plugin/query_plugin.dart';

class DashBoardScreen extends StatelessWidget {
   DashBoardScreen({super.key});
    final List typesName = [
      'Profile', 
      'Dashboard',
      'Products',
      'Customer',
    ];
    final List typeIcons = [
      Icons.person,
      Icons.dashboard_outlined,
      Icons.indeterminate_check_box,
      Icons.people_outline_sharp
    ];
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
                  Expanded(
                    child: ListView.builder(itemBuilder: (context , index){
                      return CustomRowDashBoard(icon: typeIcons[index], typeName:typesName[index]);
                    }),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}