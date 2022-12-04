import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:warcop/utils/constant.dart';

import '../../utils/responsive.dart';
import '../dashboard/dashboard.dart';
import '../form/form_material.dart';
import '../list/list_material.dart';
import 'navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;
  int active = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3, initialIndex: 0)
      ..addListener(() {
        setState(() {
          active = tabController.index;
        });
      });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       automaticallyImplyLeading:
  //         MediaQuery.of(context).size.width < 1100 ? true : false,
  //         title: Row(
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           children: <Widget>[
  //             Container(
  //               margin: const EdgeInsets.only(left: 22),
  //               child: const Text(
  //                 "W A R C O P",
  //                 style: TextStyle(
  //                   fontSize: 24,
  //                   color: Colors.white,
  //                   fontWeight: FontWeight.bold,
  //                   fontFamily: 'HelveticaNeue',
  //                 ),
  //               ),
  //             )
  //           ],
  //         ),
  //       actions: <Widget>[
  //         InkWell(
  //           onTap: () {
  //             print("download");
  //           },
  //           child: Container(
  //             margin: const EdgeInsets.all(12),
  //             padding: const EdgeInsets.all(8),
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(5),
  //               color: Colors.white
  //             ),
  //             child: Row(
  //               crossAxisAlignment: CrossAxisAlignment.end,
  //               children: const <Widget>[
  //                 Icon(
  //                   Icons.cloud_download,
  //                   color: Colors.black,
  //                   size: 22,
  //                 ),
  //                 // SizedBox(width: 4),
  //                 // Text("Download Now",
  //                 //   style: TextStyle(
  //                 //     color: Colors.black,
  //                 //     fontSize: 12,
  //                 //     fontFamily: 'HelveticaNeue'),)
  //               ],
  //             ), ),
  //         ),
  //         SizedBox(width: 22),
  //         Container(child: Icon(Icons.web)),
  //         SizedBox(width: 22),
  //         Container(child: Icon(Icons.account_circle)),
  //         SizedBox(width: 22),
  //         Container(
  //           child: IconButton(
  //             padding: EdgeInsets.all(0),
  //             icon: Icon(Icons.exit_to_app),
  //             onPressed: () {
  //               Navigator.pop(context);
  //             },
  //           ),
  //         ),
  //         SizedBox(width: 32),
  //       ],
  //       backgroundColor: ColorConstants.blue,
  //     ),
  //     body: Row(
  //       children: <Widget>[
  //         MediaQuery.of(context).size.width < 1300
  //           ? Container()
  //           : Card(
  //             elevation: 2.0,
  //             child: Container(
  //               margin: EdgeInsets.all(0),
  //               height: MediaQuery.of(context).size.height,
  //               width: 300,
  //               color: Colors.white,
  //               child: listDrawerItems(false),
  //             ),
  //           ),
  //         Container(
  //           width: MediaQuery.of(context).size.width < 1300
  //             ? MediaQuery.of(context).size.width
  //             : MediaQuery.of(context).size.width - 310,
  //           child: TabBarView(
  //             physics: const NeverScrollableScrollPhysics(),
  //             controller: tabController,
  //             children: const [
  //               Dashboard(),
  //               FormMaterial(),
  //               ListMaterial(),
  //             ]),
  //         )
  //       ],
  //     ),
  //     drawer: Padding(
  //       padding: const EdgeInsets.only(top: 56),
  //       child: Drawer(child: listDrawerItems(true)),
  //     )
  //   );
  // }

  // Widget listDrawerItems(bool drawerStatus) {
  //   return ListView(
  //     children: <Widget>[
  //       TextButton(
          
  //           // tabController.index == 0 ? Colors.grey[100] : Colors.white
          
  //         //color: Colors.grey[100],
  //         onPressed: () {
  //           tabController.animateTo(0);
  //           drawerStatus ? Navigator.pop(context) : print("");
  //         },

  //         child: Align(
  //           alignment: Alignment.centerLeft,
  //           child: Container(
  //             padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
  //             child: Row(children: [
  //               Icon(Icons.dashboard),
  //               SizedBox(
  //                 width: 8,
  //               ),
  //               Text(
  //                 "Dashboard",
  //                 style: TextStyle(
  //                   fontSize: 18,
  //                   fontFamily: 'HelveticaNeue',
  //                 ),
  //               ),
  //             ]),
  //           ),
  //         ),
  //       ),
  //       FlatButton(
  //         color: tabController.index == 1 ? Colors.grey[100] : Colors.white,
  //         onPressed: () {
  //           print(tabController.index);
  //           tabController.animateTo(1);
  //           drawerStatus ? Navigator.pop(context) : print("");
  //         },
  //         child: Align(
  //           alignment: Alignment.centerLeft,
  //           child: Container(
  //             padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
  //             child: Row(children: [
  //               Icon(Icons.exit_to_app),
  //               SizedBox(
  //                 width: 8,
  //               ),
  //               Text(
  //                 "Forms",
  //                 style: TextStyle(
  //                   fontSize: 18,
  //                   fontFamily: 'HelveticaNeue',
  //                 ),
  //               ),
  //             ]),
  //           ),
  //         ),
  //       ),
  //       FlatButton(
  //         color: tabController.index == 2 ? Colors.grey[100] : Colors.white,
  //         onPressed: () {
  //           tabController.animateTo(2);
  //           drawerStatus ? Navigator.pop(context) : print("");
  //         },
  //         child: Align(
  //           alignment: Alignment.centerLeft,
  //           child: Container(
  //             padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
  //             child: Row(children: [
  //               Icon(Icons.category),
  //               SizedBox(
  //                 width: 8,
  //               ),
  //               Text(
  //                 "Hero",
  //                 style: TextStyle(
  //                   fontSize: 18,
  //                   fontFamily: 'HelveticaNeue',
  //                 ),
  //               ),
  //             ]),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // } 



  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ResponsiveBuilder.isDesktop(context)
        ? null
        : Drawer(
          child: SafeArea(
            child: SingleChildScrollView(child: _buildSidebar(context)),
          ),
        ),
      bottomNavigationBar: (ResponsiveBuilder.isDesktop(context) || kIsWeb)
        ? null
        : const NavBar(),
      body: SafeArea(
        child: ResponsiveBuilder(
          mobileBuilder: (context, constraints) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // _buildTaskContent(
                  //   onPressedMenu: () => controller.openDrawer(),
                  // ),
                ],
              ),
            );
          },
          tabletBuilder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Flexible(
                //   flex: constraints.maxWidth > 800 ? 8 : 7,
                //   child: SingleChildScrollView(
                //     controller: ScrollController(),
                //     child: _buildTaskContent(
                //       onPressedMenu: () => controller.openDrawer(),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const VerticalDivider(),
                ),
              ],
            );
          },
          desktopBuilder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: constraints.maxWidth > 1350 ? 3 : 4,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildSidebar(context),
                  ),
                ),
                // Flexible(
                //   flex: constraints.maxWidth > 1350 ? 10 : 9,
                //   child: SingleChildScrollView(
                //     controller: ScrollController(),
                //     child: _buildTaskContent(),
                //   ),
                // ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const VerticalDivider(),
                ),
              ],
            );
          },
        )
      ),
    );
  }

  
}

Widget _buildSidebar(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: MainMenu(onSelected: controller.onSelectedMainMenu),
        ),
        
      ],
    );
  }
