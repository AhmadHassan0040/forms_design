import 'package:flutter/material.dart';

class FormsDesign extends StatefulWidget {
  const FormsDesign({super.key});

  @override
  State<FormsDesign> createState() => _FormsDesignState();
}

class _FormsDesignState extends State<FormsDesign> {
  ScrollController initScroll = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Scroll to the third container (index 2)
      initScroll.jumpTo(520.0); // Adjust the offset as needed
    });
  }

  @override
  void dispose() {
    initScroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: Image.asset(
            'lib/Images/bg.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'FORM DESIGNS',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              Text(
                'CHOOSE A DESIGN',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              SizedBox(
                height: 80,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: initScroll,
                child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white54,
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.5), // Shadow color
                              spreadRadius: 4, // Shadow spread radius
                              blurRadius: 4, // Shadow blur radius
                              offset: Offset(7, 10), // Shadow offset
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white54,
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.5), // Shadow color
                              spreadRadius: 4, // Shadow spread radius
                              blurRadius: 4, // Shadow blur radius
                              offset: Offset(7, 10), // Shadow offset
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white54,
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.5), // Shadow color
                              spreadRadius: 4, // Shadow spread radius
                              blurRadius: 4, // Shadow blur radius
                              offset: Offset(7, 10), // Shadow offset
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white54,
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.5), // Shadow color
                              spreadRadius: 4, // Shadow spread radius
                              blurRadius: 4, // Shadow blur radius
                              offset: Offset(7, 10), // Shadow offset
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white54,
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.5), // Shadow color
                              spreadRadius: 4, // Shadow spread radius
                              blurRadius: 4, // Shadow blur radius
                              offset: Offset(7, 10), // Shadow offset
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
