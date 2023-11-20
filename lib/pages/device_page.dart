import 'package:example_sem_8/models/device_model.dart';
import 'package:example_sem_8/models/space_model.dart';
import 'package:example_sem_8/pages/detail_device_page.dart';
import 'package:example_sem_8/pages/detail_space_page.dart';
import 'package:flutter/material.dart';

class DevicePage extends StatefulWidget {
  @override
  State<DevicePage> createState() => _DevicePageState();
}

class _DevicePageState extends State<DevicePage> {
  List<DeviceModel> devices = [];
  List<SpaceModel> spaces = [];
  @override
  void initState() {
    super.initState();
    spaces = [
      SpaceModel(nameSpace: "Sala", intensityComponent: 50),
      SpaceModel(nameSpace: "Comedor", intensityComponent: 70),
      SpaceModel(nameSpace: "Cocina", intensityComponent: 30),
      SpaceModel(nameSpace: "Jardin", intensityComponent: 20),
      SpaceModel(nameSpace: "Habitación Principal", intensityComponent: 80),
      SpaceModel(nameSpace: "Pasadizo", intensityComponent: 65),
      SpaceModel(nameSpace: "Entrada Principal", intensityComponent: 65),
    ];
    devices = [
      DeviceModel(
          typeDevice: "Tv Cuarto",
          iconDevice: Icons.tv,
          factoryDevice: "Sony",
          modelDevice: "FD4521",
          macDevice: "02:3d:d3:4r:45",
          onDevice: true),
      DeviceModel(
          typeDevice: "Refrigeradora",
          iconDevice: Icons.icecream,
          factoryDevice: "LG",
          modelDevice: "LG 125",
          macDevice: "02:3d:d3:4r:45",
          onDevice: false),
      DeviceModel(
          typeDevice: "Puerta Sala",
          iconDevice: Icons.door_back_door_outlined,
          factoryDevice: "Forte",
          modelDevice: "PS4521",
          macDevice: "02:3d:d3:4r:45",
          onDevice: true),
      DeviceModel(
          typeDevice: "Cochera",
          iconDevice: Icons.garage,
          factoryDevice: "Elevator",
          modelDevice: "GA4521",
          macDevice: "02:3d:d3:4r:45",
          onDevice: true),
      DeviceModel(
          typeDevice: "TV Sala",
          iconDevice: Icons.tv,
          factoryDevice: "Panasonic",
          modelDevice: "PA4521",
          macDevice: "02:3e:f3:4r:45",
          onDevice: true),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          automaticallyImplyLeading: false,
          title: Center(child: Text("Navicury")),
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.all(5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Espacios",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 130,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: spaces.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailSpace(
                              spaceModel: spaces[index],
                            ),
                          ),
                        );
                      },
                      child: Card(
                        shadowColor: Colors.black,
                        child: Container(
                          //margin: EdgeInsets.all(5),
                          color: Colors.black12,
                          width: 100,
                          height: 130,
                          child: Center(
                              child: Text(
                            spaces[index].nameSpace,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo[900]),
                          )),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.all(5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Equipos conectados",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: devices.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (builder) => DetailDevice(
                                  deviceModel: devices[index],
                                ),
                              ),
                            );
                          },
                          child: Card(
                            color: Colors.white70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  devices[index].iconDevice,
                                  size: 50,
                                  color: Colors.indigo[900],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  devices[index].typeDevice,
                                  style: TextStyle(color: Colors.indigo[900]),
                                ),
                              ],
                            ),
                          ),
                        );
                      })

                  /*                child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                children: [
                  Card(
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.tv,
                          size: 50,
                          color: Colors.indigo[900],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "TV Cuarto",
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.icecream,
                          size: 50,
                          color: Colors.indigo[900],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Refrigeradora",
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.door_back_door_outlined,
                          size: 50,
                          color: Colors.indigo[900],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Puerta Sala",
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.garage,
                          size: 50,
                          color: Colors.indigo[900],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Cochera",
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Text("card 5"),
                  ),
                ],

              )

*/

                  /*ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Center(
                        child: Text("card 2"),
                      ),
                    );
                  },
                ),*/
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
