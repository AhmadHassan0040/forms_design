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
      initScroll.jumpTo(320.0); // Adjust the offset as needed
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: initScroll,
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.blue),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.pink),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.red),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.yellow),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
