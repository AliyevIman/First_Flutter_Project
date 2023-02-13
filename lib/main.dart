import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  home:NinjaCard()
));


class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:  Text('ninja selam alk'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:  <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage:AssetImage('assets/solo.jfif') ,
                radius: 40,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
                "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "Iman",
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
              ),
            ),
            SizedBox(height: 30.0,),
            const Text(
              "Current Ninja level",
              style: TextStyle(
                  color: Colors.grey,

                  letterSpacing: 2
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "8",
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  "aliyeff@gmail.com",
                  style:TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 2
                  ) ,
                )

              ],
            ),

      ],
      ),
      ),
    );
  }
}



