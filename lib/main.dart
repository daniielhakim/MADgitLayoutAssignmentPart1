import 'package:flutter/material.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  static final String title = 'My Home';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool fanValue = false;
  bool lightValue = false;
  bool aircondValue = false;
  bool tvValue = false;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Image(
                image: AssetImage(fanValue
                    ? 'assets/images/fanOn.jpg'
                    : 'assets/images/fanOff.jpg'),
                width: 100,
                height: 100,
              ),
              fanSwitch(),
            ]),
          ),
          Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Image(
                image: AssetImage(lightValue
                    ? 'assets/images/lightOn.png'
                    : 'assets/images/lightOff.png'),
                width: 100,
                height: 100,
              ),
              lightSwitch(),
            ]),
          ),
          Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Image(
                image: AssetImage(aircondValue
                    ? 'assets/images/aircondOn.png'
                    : 'assets/images/aircondOff.png'),
                width: 100,
                height: 100,
              ),
              aircondSwitch(),
            ]),
          ),
          Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Image(
                image: AssetImage(tvValue
                    ? 'assets/images/tvOn.png'
                    : 'assets/images/tvOff.png'),
                width: 100,
                height: 100,
              ),
              tvSwitch(),
            ]),
          ),
        ],
      ));

  Widget fanSwitch() => Transform.scale(
        scale: 1,
        child: Switch(
          value: fanValue,
          onChanged: (value) => setState(() => this.fanValue = value),
        ),
      );

  Widget lightSwitch() => Transform.scale(
        scale: 1,
        child: Switch(
          value: lightValue,
          onChanged: (value) => setState(() => this.lightValue = value),
        ),
      );

  Widget aircondSwitch() => Transform.scale(
        scale: 1,
        child: Switch(
          value: aircondValue,
          onChanged: (value) => setState(() => this.aircondValue = value),
        ),
      );

  Widget tvSwitch() => Transform.scale(
        scale: 1,
        child: Switch(
          value: tvValue,
          onChanged: (value) => setState(() => this.tvValue = value),
        ),
      );
}
