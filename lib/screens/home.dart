import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.deepOrangeAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Pizza',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 64,
              decoration: TextDecoration.none,
              color: Colors.deepPurple,
              fontFamily: 'Oxygen',
              fontWeight: FontWeight.normal,
            ),
          ),
          PizzaImageWidget(),
          OrderButtonWidget(),
        ],
      ),
    );
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaImage = AssetImage('images/pizza.png');
    Image image = Image(image: pizzaImage);
    return Container(child: image);
  }
}

class OrderButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('Order your Pizza!'),
        color: Colors.lightGreen,
        elevation: 5,
        onPressed: () {
          order(context);
        },
      ),
    );
  }

  void order(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text('Order Completed'),
      content: Text('Thanks for your order!'),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => alert
    );
  }
}