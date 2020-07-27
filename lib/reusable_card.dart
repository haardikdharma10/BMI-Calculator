import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
//  const ReusableCard({
//    Key key,
//  }) : super(key: key);
//We have no use of keys in our app hence we delete the default constructor and
//create one of our own for the property we are likely to change in future.

  final Color colour;
  final Widget cardChild;
  //Stateless widgets are immutable, hence if we remove the keyword final,
  //we will get an error!
  ReusableCard({@required this.colour, this.cardChild});
  //Wherever we'll use the ReusableCard, we have to specify the color.

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
