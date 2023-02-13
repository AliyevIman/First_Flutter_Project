import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  home:NinjaCard()
));


class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:  Text('Hunter ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
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
              "Sung Jin Woo",
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
              ),
            ),
            SizedBox(height: 30.0,),
            const Text(
              "Current Hunter level",
              style: TextStyle(
                  color: Colors.grey,

                  letterSpacing: 2
              ),
            ),
            SizedBox(height: 10.0,),
             Text(
              '$ninjaLevel',
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
                  "Sun@hunter.com",
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



