import 'package:flutter/material.dart';
import 'package:weather_app/widgets/gradient_text.dart';
import 'package:weather_app/widgets/time.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:glass_kit/glass_kit.dart';

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
                  image: AssetImage("assets/images/2149304983.jpg"),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const GradientText(
                    text: "16\u00B0\u1D9C",
                    linearGradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Colors.blue,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    textStyle: TextStyle(
                      fontSize: 150,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 110,
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Row(
                      children: [
                        Image.asset("assets/icons/icons8-rain-24.png"),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Mostly Cloudy",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 280,
              left: 10,
              child: NeumorphicButton(
                onPressed: () {},
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(25),
                  ),
                  color: Colors.blue[200],
                ),
                child: const Row(
                  children: [
                    Icon(Icons.arrow_upward),
                    Text(
                      "17\u00B0",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.arrow_downward),
                    Text(
                      "10\u00B0",
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 350,
              left: 30,
              child: GlassContainer(
                height: 130,
                width: 370,
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.40),
                    Colors.white.withOpacity(0.10),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderGradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.60),
                    Colors.white.withOpacity(0.10),
                    Colors.purpleAccent.withOpacity(0.05),
                    Colors.purpleAccent.withOpacity(0.60),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 0.39, 0.40, 1.0],
                ),
                blur: 20,
                borderRadius: BorderRadius.circular(24.0),
                borderWidth: 1.0,
                elevation: 3.0,
                isFrostedGlass: true,
                shadowColor: Colors.purple.withOpacity(0.20),
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 80,
                        height: 70,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/icons/icons8-rain-24-02.png",
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 2.5,
                                ),
                                const Text(
                                  "23:00",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Slight chance of rain",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const SizedBox(
                        width: 90,
                        height: 80,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_outward,
                                  color: Colors.white,
                                ),
                                Text(
                                  "14 km/h",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Gentle breeze now",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/icons/icons8-sun-24.png",
                                ),
                                const SizedBox(
                                  width: 2.5,
                                ),
                                const Text(
                                  "23:00",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Low sunburn risk today",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
