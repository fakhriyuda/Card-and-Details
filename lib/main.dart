import 'package:flutter/material.dart';
import 'details.dart';
import 'lesson.dart';
import 'textField.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      // home: ListPage(
      //   title: 'Lessons',
      // ),
      home: MyHomePage(),
    );
  }
}

class ListPage extends StatefulWidget {
  final String title;

  const ListPage({Key key, this.title}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List lessons;

  void initState() {
    lessons = getLessons();
    super.initState();
  }

  Widget topAppBar(String t) {
    return AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text(t),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],
    );
  }

  Widget makeBottom() {
    return Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.blur_on,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.hotel,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.account_box,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget makeBody() {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          return makeCard(lessons[index]);
        },
      ),
    );
  }

  Widget makeCard(Lesson lesson) {
    return Card(
      elevation: 8.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(lesson),
      ),
    );
  }

  Widget makeListTile(Lesson lesson) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(width: 1.0, color: Colors.white24),
          ),
        ),
        child: Icon(
          Icons.directions_car,
          color: Colors.white,
        ),
      ),
      title: Text(
        lesson.title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: LinearProgressIndicator(
                backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                value: lesson.indicatorValue,
                valueColor: AlwaysStoppedAnimation(Colors.green),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                lesson.level,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.white,
        size: 30.0,
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage(lesson: lesson,)));
      },
    );
  }

  List getLessons() {
    return [
      Lesson(
          title: "Introduction to Driving",
          level: "Beginner",
          indicatorValue: 0.33,
          price: 20,
          content:
              "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
      Lesson(
          title: "Observation at Junctions",
          level: "Beginner",
          indicatorValue: 0.33,
          price: 50,
          content:
              "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
      Lesson(
          title: "Reverse parallel Parking",
          level: "Intermidiate",
          indicatorValue: 0.66,
          price: 30,
          content:
              "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
      Lesson(
          title: "Reversing around the corner",
          level: "Intermidiate",
          indicatorValue: 0.66,
          price: 30,
          content:
              "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
      Lesson(
          title: "Incorrect Use of Signal",
          level: "Advanced",
          indicatorValue: 1.0,
          price: 50,
          content:
              "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
      Lesson(
          title: "Engine Challenges",
          level: "Advanced",
          indicatorValue: 1.0,
          price: 50,
          content:
              "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
      Lesson(
          title: "Self Driving Car",
          level: "Advanced",
          indicatorValue: 1.0,
          price: 50,
          content:
              "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.  "),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar(widget.title),
      body: makeBody(),
      bottomNavigationBar: makeBottom(),
    );
  }
}
