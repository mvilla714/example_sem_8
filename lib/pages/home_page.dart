import 'package:example_sem_8/pages/device_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/start.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //color: Colors.red,
                alignment: Alignment.bottomCenter,
                height: 420,
                child: Text(
                  "Navicury",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              Container(
                //color: Colors.amber,
                width: 300,
                height: 250,
                //alignment: Alignment.bottomCenter,
                child: IconButton(
                  onPressed: () {
                    print("clic");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DevicePage(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.fingerprint,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  //height: MediaQuery.of(context).size.height / 3,
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Presione la pantalla con su dedo",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
