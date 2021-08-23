import 'package:flutter/material.dart';

void main() {
  runApp(SliverCreation());
}

class SliverCreation extends StatelessWidget {
  const SliverCreation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new CustomScrollView(

        slivers: <Widget>[
          // this sliver app bar contains the particular image
          SliverAppBar(
               leading: Icon(Icons.arrow_back),
            title: Text('Sliver Effect'),
            // to make the title dissapear when scrolling change the: floating = true
            // to pin the app bar to the top set : pinned = true;
            expandedHeight: 250,
            flexibleSpace: new FlexibleSpaceBar(
              //loading the image from the web or external source
              background:Image.network('https://placeimg.com/480/320/any') ,
            ),
          ),
          new SliverList(
            delegate: new SliverChildBuilderDelegate((context, index) =>
                new Card(
                 child: new Container(
                   padding:  EdgeInsets.all(10.0),
                   child: new Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children:<Widget> [
                       CircleAvatar(
                         backgroundColor: Colors.transparent,
                         backgroundImage: new NetworkImage('https://i.pravatar.cc/300'),
                       ),
                       SizedBox(width: 13,),
                       Text('I am the Card Content!!')
                     ],
                   )
                   ,
                 ),
                ),
            )
          ),
        ],
      ),
    );
  }
}

