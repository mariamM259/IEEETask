import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding/onboarding.dart';
import 'package:pr1/calls.dart';
import 'package:pr1/chats.dart';
import 'package:pr1/main.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(

              title: 'Send Free Message',
              body:
                  'Cras dapibus. Vivamus elemerntum sempar nisi Aenean vulputate eleilend tellus. Aeneam leo ligula,pottitor eu consequat vitae',
              image: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    height: 800,
                    width: 800,
                    child: Image(
                      image: AssetImage(
                          "Images/photos/Screenshot 2023-02-11 204224.png"),
                    )),
              ),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(fontSize: 20,),
              bodyTextStyle: TextStyle(fontSize: 12,color: Colors.grey)
            )

          ),
          PageViewModel(
              title: 'Connect Your Friend',
              body:
                  'Cras dapibus. Vivamus elemerntum semper nisi Aenean vulputate eleilend tellus. Aenean leo ligula,pottitor eu consequat vitae',
              image: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                    height: 800,
                    width: 800,
                    child: Image(
                      image: AssetImage(
                          "Images/photos/Screenshot 2023-02-11 204249.png"),
                    )),
              ),
              decoration: PageDecoration(
                  titleTextStyle: TextStyle(fontSize: 20,),
                  bodyTextStyle: TextStyle(fontSize: 12,color: Colors.grey)
              )
          ),
          PageViewModel(
              title: 'Make Group Chat',
              body:
                  'Cras dapibus. Vivamus elemerntum semper nisi Aenean vulputate eleilend tellus. Aenean leo ligula,pottitor eu consequat vitao',
              image: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                    height: 500,
                    width: 500,
                    child: Image(
                      image: AssetImage(
                          "Images/photos/Screenshot 2023-02-11 204303.png"),
                    )),
              ),
              decoration: PageDecoration(
                  titleTextStyle: TextStyle(fontSize: 20,),
                  bodyTextStyle: TextStyle(fontSize: 12,color: Colors.grey)
              ),
              ),
        ],
        done: FloatingActionButton.small(
          backgroundColor: Colors.green,
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => homepage()));
          },
          child: Icon(Icons.check_rounded),
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(10.0, 20.0),
          //activeColor: Theme.of(context).canvasColor,
          color: Colors.green.shade200,
          activeColor: Colors.green,

          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
        showBackButton: false,
        animationDuration: 1,
        onDone: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => chats()));
        },
        showNextButton: true,
        next: FloatingActionButton.small(
          backgroundColor: Colors.green,
          onPressed: null,
          child: Icon(Icons.arrow_right_alt),
        ),
        showSkipButton: true,
        skip: Text('skip'),

      ),
    );
  }
}
