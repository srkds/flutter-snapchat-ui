import 'package:flutter/material.dart';
import 'package:photo_blog_app/screens/posts_screen.dart';
import 'package:photo_blog_app/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex = 1;
  PageController _c;

  final List<Widget> _screens = [
    Container(
      child: Center(
        child: Text("0"),
      ),
    ),

    Container(
      child: Center(
        child: Text("1"),
      ),
    ),

    Container(
      child: Center(
        child: Text("2"),
      ),
    ),
  ];

  void onTabTapped(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    _c = PageController(
      initialPage: currentIndex
    );
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

          PageView(
            controller: _c,
            onPageChanged: onTabTapped,
            children: <Widget>[

              PostsScreen(),

              Container(
                child: Center(
                  child: Text("1"),
                ),
              ),

              ProfileScreen(),
            ],
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFFCBCBCB),

                    Colors.transparent
                  ]
                )
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
              data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
              child: BottomNavigationBar(
                onTap: (index){
                  this._c.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
                },
                currentIndex: currentIndex,
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.dashboard), title: Text("Posts"),),
                  BottomNavigationBarItem(icon: Icon(Icons.camera), title: Text("Camara")),
                  BottomNavigationBarItem(icon: Icon(Icons.tag_faces), title: Text("Posts")),
                ],
                unselectedItemColor: Colors.white,
                selectedItemColor: Color(0xFFDB4E4C),
              ),
            ),
          )

        ],
      ),
//      bottomNavigationBar: BottomNavigationBar(
//        onTap: (index){
//          this._c.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
//        },
//        currentIndex: currentIndex,
//        items: [
//          BottomNavigationBarItem(icon: Icon(Icons.dashboard), title: Text("Posts")),
//          BottomNavigationBarItem(icon: Icon(Icons.camera), title: Text("Camara")),
//          BottomNavigationBarItem(icon: Icon(Icons.tag_faces), title: Text("Posts")),
//        ],
//        backgroundColor: Colors.transparent,
//      ),
    );
  }
}
