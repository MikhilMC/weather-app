import 'package:flutter/material.dart';
import 'package:weather_app/widgets/time.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 750,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Designer (2).jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Positioned(
              top: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    "London",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 230,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 40,
                  )
                ],
              ),
            ),
            const Positioned(
              top: 100,
              left: 10,
              child: Time(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 120,
              left: 10,
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "16",
                      style: TextStyle(
                        fontSize: 150,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.bottom,
                      child: Transform.translate(
                        offset: const Offset(0, -20),
                        child: const Text(
                          "℃",
                          style: TextStyle(
                            fontSize: 90,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
