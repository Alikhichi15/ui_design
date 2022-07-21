import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_design/WidgetCard.dart';
import 'package:ui_design/WidgetCard2.dart';

class UIPage extends StatelessWidget {
  const UIPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.green,
        appBar: AppBar(
          toolbarHeight: 130,
          elevation: 0,
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, right: 30, left: 30, bottom: 10),
                child: Text(
                  'Hey🙂\nLets search your Grocery food',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, right: 10, left: 30, bottom: 10),
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: TextFormField(
                    style: TextStyle(
                        fontSize: 20, color: Theme.of(context).primaryColor),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white70,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    )),
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  color: Colors.grey[200]),
              height: MediaQuery.of(context).size.height / 1.3,
              width: MediaQuery.of(context).size.width,
              child: Container(
                // color: Colors.amber,
                margin: const EdgeInsets.only(
                    top: 18, left: 20, right: 20, bottom: 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WidgetCard(),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            WidgetCard2(),
                            SizedBox(
                              width: 20,
                            ),
                            WidgetCard2()
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      WidgetCard(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
