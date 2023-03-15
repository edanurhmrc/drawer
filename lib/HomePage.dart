import 'package:drawer/pages/AddFAB.dart';
import 'package:drawer/pages/Map.dart';
import 'package:drawer/pages/DashBoard.dart';
import 'package:drawer/pages/Profile.dart';
import 'package:drawer/pages/Search.dart';
import 'package:drawer/pages/hakk%C4%B1m%C4%B1zda.dart';
import 'package:drawer/pages/iletisim.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    DashBoard(),
    SearchPage(),
    Map(),
    ProfilePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = DashBoard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,),

      //Add Floating Bar
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddFAB()));
        },),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //bottomNavBAR
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60, child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            //Left Tab Bar Icons
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth:40,
                  onPressed: (){
                    setState(() {
                      currentScreen = DashBoard();
                      currentTab = 0;});},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home, color: currentTab == 0 ? Colors.indigoAccent[100]: Colors.grey,),
                      Text("Home", style: TextStyle(color: currentTab == 0 ? Colors.indigoAccent[100]:Colors.grey,),),
                    ],),
                ),
                MaterialButton(
                  minWidth:40,
                  onPressed: (){
                    setState(() {
                      currentScreen = SearchPage();
                      currentTab = 1;
                    });},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.search, color: currentTab == 1 ? Colors.indigoAccent[100]: Colors.grey,),
                      Text("Search", style: TextStyle(color: currentTab == 1 ? Colors.indigoAccent[100]:Colors.grey,),),
                    ],),),], //Children
            ),

            //Right Tab Bar Icons
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth:40,
                  onPressed: (){
                    setState(() {
                      currentScreen = Map();
                      currentTab = 2;
                    });},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.map, color: currentTab == 2 ? Colors.indigoAccent[100]: Colors.grey,),
                      Text("Map", style: TextStyle(color: currentTab == 2 ? Colors.indigoAccent[100]:Colors.grey,),),
                    ],),),
                MaterialButton(
                  minWidth:40,
                  onPressed: (){
                    setState(() {
                      currentScreen = ProfilePage();
                      currentTab = 3;
                    });},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person, color: currentTab == 3 ? Colors.blue: Colors.grey,),
                      Text("Profile", style: TextStyle(color: currentTab == 3 ? Colors.blue:Colors.grey,),),
                    ],),),], //Children
            ),
          ],
        ),
        ),
      ),

      appBar: AppBar(
        title: Text("drawer template"),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.indigoAccent[100],
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
             DrawerHeader(
                  child: Column(
                    children: [
                      Image.asset("assets/user.png",color: Colors.white,),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text("@username",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,fontFamily:"myFont"
                      ),),
                    )],)),

              ListTile(
                leading: Icon(Icons.home) ,
                title: Text("Anasayfa",
                  style: TextStyle(fontSize: 20,color: Colors.white,fontFamily:"myFont"),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.question_mark_rounded) ,
                title: Text("Hakkımızda",
                  style: TextStyle(fontSize: 20,color: Colors.white,fontFamily:"myFont"),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => hakkimizda()));
                },
              ),
              ListTile(
                leading: Icon(Icons.phone) ,
                title: Text("Iletisim",
                  style: TextStyle(fontSize: 20,color: Colors.white,fontFamily:"myFont"),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => iletisim()));
                },
              ),
              ListTile(
                leading: Icon(Icons.logout_rounded) ,
                title: Text("Cıkıs",
                  style: TextStyle(fontSize: 20,color: Colors.white,fontFamily:"myFont"),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("Çıkış Yapıldı", style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 20,fontWeight: FontWeight.bold),),
                    backgroundColor: Colors.white70,
                    duration: Duration(seconds: 3),)
                  );
                },
              ),
            ],
          ),
        ),
      ),

    );
  }
}

