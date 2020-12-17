import 'package:flutter/material.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {


  Color _color = Colors.blue;
  Color _color2 = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Picker'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: _color,
                  height: 300,
                  width: 200,
                  child: Center(
                    child: Text('Exampe 1',style: TextStyle(fontSize: 30.0,
                    color: Colors.white),),
                  ),
                ),
                Container(
                  height: 300,
                  width: 200,
                  color: _color2,
                  child: Center(
                    child: Text('Example 2',style: TextStyle(fontSize: 30.0,
                    color: Colors.black),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.0,),
            FittedBox(
              child: Row(
                children: [
                  CircleColorPicker(
                    initialColor: _color,
                    onChanged:(Color color){
                      setState(() {
                        _color = color;
                      });
                    },
                    textStyle: TextStyle(color: Colors.white,fontSize: 30.0),
                  ),
                  CircleColorPicker(
                    initialColor: _color2,
                    onChanged: (Color color){
                      setState(() {
                        _color2 = color;
                      });
                    },
                    strokeWidth: 10.0,
                    colorCodeBuilder: (context,color){
                      return Text('RGB(${color.red},${color.green},${color.blue})',
                      style: TextStyle(fontSize: 24,color: Colors.white,
                          fontWeight: FontWeight.bold),);
                    },
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // void _onColorChanged(Color color){
  //   setState(() {
  //     _color = color;
  //     // _color2 = color;
  //   });
  // }
}















