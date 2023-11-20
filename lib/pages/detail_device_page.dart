import 'package:example_sem_8/models/device_model.dart';
import 'package:flutter/material.dart';

class DetailDevice extends StatefulWidget {
  DeviceModel deviceModel;
  DetailDevice({required this.deviceModel});

  @override
  State<DetailDevice> createState() => _DetailDeviceState();
}

class _DetailDeviceState extends State<DetailDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text("Equipo : ${widget.deviceModel.typeDevice}"),
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
            height: 200,
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      margin: EdgeInsets.only(left: 40),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Fabricante: ",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        //color: Colors.amber,
                        margin: EdgeInsets.only(right: 40),
                        alignment: Alignment.centerRight,
                        child: Text(
                          widget.deviceModel.factoryDevice,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      margin: EdgeInsets.only(left: 40),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Modelo: ",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        //color: Colors.amber,
                        margin: EdgeInsets.only(right: 40),
                        alignment: Alignment.centerRight,
                        child: Text(
                          widget.deviceModel.modelDevice,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      margin: EdgeInsets.only(left: 40),
                      alignment: Alignment.centerLeft,
                      child: Text("MAC: "),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 40),
                        alignment: Alignment.centerRight,
                        child: Text(
                          widget.deviceModel.macDevice,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(1, 1),
                            blurRadius: 5)
                      ]),
                  height: 50,
                  width: 200,
                  //color: Colors.amber,
                  child: TextButton(
                    onPressed: () {
                      if (widget.deviceModel.onDevice) {
                        widget.deviceModel.onDevice = false;
                      } else {
                        widget.deviceModel.onDevice = true;
                      }

                      print("${widget.deviceModel.onDevice}");
                      setState(() {});
                    },
                    child: Text(
                      widget.deviceModel.onDevice ? "Apagar" : "Encender",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.indigo[900],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
