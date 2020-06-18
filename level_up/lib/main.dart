import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LevelUp(),
  ));
}


class LevelUp extends StatefulWidget {
  @override
  _LevelUpState createState() => _LevelUpState();
}

class _LevelUpState extends State<LevelUp> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[300],
        title: Text(
            'Level Up',
          style: TextStyle(
            color: Colors.deepOrange[800],
            fontSize: 25.0,
            fontWeight: FontWeight.w300,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Ghost.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.deepOrange[500],
            ),
            Text(
              'NAME',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.deepOrange[300],
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 15.0,),
            Text(
              'Mahnoor',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.deepOrange[800],
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300,
                //fontFamily: 'IndieFlower',
              ),
            ),
            SizedBox(height: 35.0,),
            Text(
              'NUMBER OF LAPS',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.deepOrange[300],
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 15.0,),
            Text(
              '$counter',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.deepOrange[800],
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 35.0,),
            Row(
             children: <Widget>[
               Icon(
                 Icons.email,
                 color: Colors.deepOrange[400],
               ),
               SizedBox(width: 20.0,),
               Text(
                 'mahnoor@gmail.com',
                 style: TextStyle(
                   fontSize: 17.0,
                   color: Colors.deepOrange[300],
                   letterSpacing: 1.0,
                   fontWeight: FontWeight.w300,
                 ),
               ),
             ],
            )

          ],
        ),

      ),

      floatingActionButton: Stack(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left: 30.0, right: 20.0, bottom: 15.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Theme(
                data: Theme.of(context).copyWith(highlightColor: Colors.deepOrangeAccent),
                child: FloatingActionButton(
                  onPressed: (){
                    setState(() {
                      counter +=1 ;
                    });
                  },
                  elevation: 0.0,
                  child: Icon(Icons.directions_run, color: Colors.yellow[100],),
                  backgroundColor: Colors.deepOrange[300],

                ),
              ),
            ),
        ),
        Padding(padding: EdgeInsets.only(left: 50.0, right: 20.0, bottom: 15.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Theme(
                data: Theme.of(context).copyWith(highlightColor: Colors.deepOrangeAccent),
                child: FloatingActionButton(
                  onPressed: (){
                    setState(() {
                      counter = 0 ;
                    });
                  },
                  elevation: 0.0,
                  child: Icon(Icons.refresh, color: Colors.yellow[100],),
                  backgroundColor: Colors.deepOrange[300],

                ),
              ),
            ),
        ),

      ],
      ),
    );
  }
}
