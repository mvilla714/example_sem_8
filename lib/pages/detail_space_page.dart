import 'package:example_sem_8/models/space_model.dart';
import 'package:flutter/material.dart';

class DetailSpace extends StatefulWidget {
  SpaceModel spaceModel;
  DetailSpace({required this.spaceModel});
  @override
  State<DetailSpace> createState() =>
      _DetailSpaceState(spaceModelState: spaceModel);
}

class _DetailSpaceState extends State<DetailSpace> {
  SpaceModel spaceModelState;
  _DetailSpaceState({required this.spaceModelState});
  //int valueLight = spaceModelState.intensityComponent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text("Espacio : ${spaceModelState.nameSpace}"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            //color: Colors.amber,
            height: 50,
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.indigo[900],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
            ),
            child: Text(
              "Navicury",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            //color: Colors.red,
            margin: EdgeInsets.all(20),
            //padding: EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Ajustar ${spaceModelState.nameSpace}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Luz",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Slider(
                  activeColor: Colors.indigo[900],
                  inactiveColor: Colors.indigo[100],
                  value: spaceModelState.intensityComponent.toDouble(),
                  min: 0,
                  max: 100,
                  //divisions: 50,
                  //label: spaceModelState.intensityComponent.toString(),
                  onChanged: (light) {
                    spaceModelState.intensityComponent = light.toInt();
                    setState(() {});
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      margin: EdgeInsetsDirectional.only(start: 20),
                      alignment: Alignment.centerLeft,
                      child: Text("0"),
                    ),
                    Container(
                      width: 100,
                      alignment: Alignment.center,
                      child:
                          Text(spaceModelState.intensityComponent.toString()),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      alignment: Alignment.centerRight,
                      width: 100,
                      child: Text("100"),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Luz",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Slider(
                  activeColor: Colors.indigo[900],
                  inactiveColor: Colors.indigo[100],
                  value: spaceModelState.intensityComponent.toDouble(),
                  min: 0,
                  max: 100,
                  //divisions: 50,
                  //label: spaceModelState.intensityComponent.toString(),
                  onChanged: (light) {
                    spaceModelState.intensityComponent = light.toInt();
                    setState(() {});
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      margin: EdgeInsetsDirectional.only(start: 20),
                      alignment: Alignment.centerLeft,
                      child: Text("0"),
                    ),
                    Container(
                      width: 100,
                      alignment: Alignment.center,
                      child:
                          Text(spaceModelState.intensityComponent.toString()),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      alignment: Alignment.centerRight,
                      width: 100,
                      child: Text("100"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
