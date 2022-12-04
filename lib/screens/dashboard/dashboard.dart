import 'package:flutter/material.dart';
import 'package:warcop/widgets/cards.dart';

import '../../utils/raw_data.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  bool loading = false;
  // @override
  // void initState() {
  //   super.initState();
  //   getDataFromUi();
  // }

  // getDataFromUi() async {
  //   loading = false;
  //   await ApiData.getData();
  //   setState(() {
  //     loading = true;
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.only(top: 12),
              child: Column(
                children: <Widget>[
                  MediaQuery.of(context).size.width < 550
                    ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List<Widget>.generate(4, (index) {
                        return Card(color: Colors.amber,child: Container(height: 100),);
                      }),
                    )
                    : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List<Widget>.generate(4, (index) {
                        return Card(color: Colors.amber,child: Container(height: 100),);
                      }),
                    )
                      ],
                    )
          )],
              ),
            ),
          ]);
        
        
      
    
  }
}