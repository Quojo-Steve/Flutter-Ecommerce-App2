import 'package:flutter/material.dart';
import 'package:online_shop/screens/item_screen.dart';

class GridItems extends StatelessWidget {
  GridItems({super.key});
  var pNames = [
    "Apple Watch -M2",
    "Ear Headphone",
    "Nike Shoe",
    "White Tshirt"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pNames.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.7),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 253, 253, 253),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, blurRadius: 4, spreadRadius: 2)
                ]),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "30% off",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemScreen()));
                      },
                      child: Image.asset(
                        "images/${pNames[index]}.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pNames[index],
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.8)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "\$100",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "\$130",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 13,
                                    color: Colors.black.withOpacity(0.4)),
                              )
                            ],
                          )
                        ]),
                  )
                ],
              ),
            ),
          );
        });
  }
}
