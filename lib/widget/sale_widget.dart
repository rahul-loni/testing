import 'package:flutter/material.dart';

class SaleWidget extends StatelessWidget {
  const SaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF7A60A5),
            Color.fromARGB(255, 35, 51, 58),
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                padding: EdgeInsets.all(5.0),
                height: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF9689CE),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "Get the special discount ",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Flexible(
                      child: SizedBox(
                        width: double.infinity,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Text(
                            "50 %\n Off",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.network(
                width: double.infinity,
                "https://i.ibb.co/vwB46Yq/shoes.png",
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
