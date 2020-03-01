import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

          // For background
          SizedBox(
              width: MediaQuery.of(context).size.width+4,
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('assets/shape1.png',fit: BoxFit.cover,)
                  )
              )
          ),
          
          Column(
            children: <Widget>[


              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 100),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red,
                        blurRadius: 50.0,
                        spreadRadius: 0.2
                      )
                    ],
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.network("https://images.pexels.com/photos/2918513/pexels-photo-2918513.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",height: 150,width: 150,fit: BoxFit.cover,),
                    ),
                ),
              ),

              SizedBox(height: 30,),

              Container(
                child: Text("User Name",style: TextStyle(fontSize: 30, color: Color(0xFFDB4E4C)),),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Color(0xFFDB4E4C))
                        ),
                        child: Text("Edit Profile",),
                        color: Color(0xFFDB4E4c),
                        textColor: Colors.white,
                        onPressed: (){

                        },
                      ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)
                        ),
                        child: Text("Logout"),
                        color: Colors.white,
                        textColor: Color(0xFFDB4E4c),
                        onPressed: (){

                        },
                      ),
                    )

                  ],
                ),
              )

            ],
          ),



        ],
      ),
    );
  }
}
