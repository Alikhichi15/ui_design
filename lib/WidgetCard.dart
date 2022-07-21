import 'package:flutter/material.dart';

class WidgetCard extends StatelessWidget {
  const WidgetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(35)),
          color: Colors.white),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(35)),
        child: Card(
          elevation: 0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  color: Colors.green[100]),
                              height: 60,
                              width: 100,
                              child: Center(
                                child: Image.network(
                                    'https://www.eatthis.com/wp-content/uploads/sites/4/2019/10/oreo.jpg'),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Vegetables')
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  color: Colors.green[100]),
                              height: 60,
                              width: 100,
                              child: Center(
                                  child: Image.network(
                                      'https://www.eatthis.com/wp-content/uploads/sites/4/2019/10/oreo.jpg')),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Fruits')
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  color: Colors.green[100]),
                              height: 60,
                              width: 100,
                              child: Center(
                                  child: Image.network(
                                      'https://www.eatthis.com/wp-content/uploads/sites/4/2019/10/oreo.jpg')),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Meat')
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
