import 'package:flutter/material.dart';

class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(itemBuilder: (context,index){
          return Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[


                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage("https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"),
                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Text("UserName", style: TextStyle(fontSize: 24),),
                          ),

                          Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Text("UserName", style: TextStyle(fontSize: 18),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.network("https://images.pexels.com/photos/697244/pexels-photo-697244.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", fit: BoxFit.cover,),
                  ),
                ),

                SizedBox(height: 5,),

                Container(
                  child: Text("We are enjoying here..😀"),
                )


              ],
            ),
          );
        },
        itemCount: 10,
        ),
      ),
    );
  }
}
