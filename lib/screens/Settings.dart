import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(108, 99, 255, 1),
        title: Text("Setting"),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage("assets/image/undraw_Sign_in_re_o58h.png"),
                      fit: BoxFit.fill),
                ),
              ),
              Text(
                "Settings",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(108, 99, 255, 1),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(108, 99, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("sign out")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(108, 99, 255, 1),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text("Alert "),
                        content: const Text("hiii this is AlertDialog"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Container(
                              padding: const EdgeInsets.all(14),
                              child: const Text(
                                "ok",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(108, 99, 255, 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text("show dialog")),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
