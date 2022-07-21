import 'package:flutter/material.dart';

class WidgetCard2 extends StatelessWidget {
  const WidgetCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text = 'Order any food from the app and get the discount.';
    return Container(
      alignment: Alignment.centerRight,
      height: 140,
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(35)),
          color: Colors.green[100]),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(35)),
        child: Card(
          elevation: 0,
          color: Colors.green[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.amber,
                  height: 120,
                  width: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '30 % Discount',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Text(
                        'Order any food from the \napp and get the discount.',
                        style: TextStyle(fontSize: 16),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      'Order Now',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
