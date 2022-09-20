import 'package:flutter/material.dart';
import '../widgets/drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Widget _buildContainer(String imgURL){
      return Stack(
        children: [
          Container(
            height: 100.0,
            width: 90.0,
            decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.solid,
                width: 3.0,
                color: Colors.blue,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(3.0)),
              child: Image(
                image: AssetImage(imgURL),
                fit: BoxFit.cover,
              ),
            )
          ),
          Container(
            height: 100.0,
            width: 90.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              color: Colors.blue.withOpacity(0.2),
            ),
          )
        ],
      );
    }

    final scrWidth = MediaQuery.of(context).size.width;
    final scrHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: const MenuWidget(),
        title: const Text('Vico Design'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              height: scrHeight,
              width: scrWidth,
              decoration: BoxDecoration(
                border: Border.all(
                  style: BorderStyle.solid,
                  width: 7.0,
                  color: Colors.blue,
                ),
                image: const DecorationImage(
                  image: AssetImage('assets/images/IMG-20220821-WA0032.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                height: scrHeight,
                width: scrWidth,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
                        child: Text('VIDEO ANIMATION COURSE',
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 2.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: scrWidth *.40,
                                child: const Text('Learn how to create',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    height: 1.2,
                                    // letterSpacing: 1.0,
                                  ),
                                ),
                              ),
                            SizedBox(
                              width: scrWidth *.474,
                              child: const Text('HIGHLY PROFESSIONAL',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  height: 1.2,
                                  // letterSpacing: 1.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: scrWidth *.40,
                              child: const Text('ANIMATED VIDEOS',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  height: 1.2,
                                  // letterSpacing: 1.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: scrWidth *.47,
                              child: const Text('to boost your sales with your.',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  height: 1.2,
                                  // letterSpacing: 1.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: scrWidth *.47,
                              child: const Text('SMARTPHONE ONLY.',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  height: 1.2,
                                  // letterSpacing: 1.0,
                                ),
                              ),
                            ),
                          ]),
                          const SizedBox(width: 4.0),
                          Column(
                            children: [
                              const SizedBox(height: 15.0),
                              _buildContainer('assets/images/IMG-20220821-WA0034.jpg'),
                            ],
                          ),
                          const SizedBox(width: 8.0),
                          _buildContainer('assets/images/IMG-20220821-WA0047.jpg'),
                        ],
                      ),
                      const SizedBox(height: 6.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildContainer('assets/images/IMG-20220821-WA0053.jpg'),
                          const SizedBox(width: 8.0),
                          Column(
                            children: [
                              const SizedBox(height: 14.0),
                              _buildContainer('assets/images/IMG-20220821-WA0049.jpg'),
                            ],
                          ),
                          const SizedBox(width: 12.0),
                          Container(
                            width: 100.0,
                            padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
                            // color: Colors.red,
                            child: Column(
                              children: const [
                                Text('YOU DO',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    height: 1.2,
                                    // letterSpacing: 1.0,
                                  ),
                                ),
                                Text('NOT NEED',
                                  style: TextStyle(
                                    fontSize: 21.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    height: 1.2,
                                    // letterSpacing: 1.0,
                                  ),
                                ),
                                Text('A LAPTOP.',
                                  style: TextStyle(
                                    fontSize: 21.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    height: 1.2,
                                    // letterSpacing: 1.0,
                                  ),
                                ),
                              ]
                            ),
                          ),
                          const SizedBox(width: 14.0),
                          Stack(
                            children: [
                              Container(
                                  height: 130.0,
                                  width: 120.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      style: BorderStyle.solid,
                                      width: 3.0,
                                      color: Colors.blue,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                  child: const ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                                    child: Image(
                                      image: AssetImage('assets/images/IMG-20220821-WA0065.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  )
                              ),
                              Container(
                                height: 130.0,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                                  color: Colors.blue.withOpacity(0.2),
                                ),
                              ),
                              const Positioned(
                                bottom: 3.0,
                                left: 3.0,
                                child: Icon(Icons.cancel_sharp,
                                  color: Colors.red,
                                  size: 55.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text('BONUS')
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
