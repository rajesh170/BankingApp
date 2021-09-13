import 'package:flutter/material.dart';
import 'package:banking_app_ui/constants/color_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Bank App",
              style: TextStyle(
                fontFamily: "Poppins",
                color: kPrimaryColor,
              )),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://flutter.dev/assets/images/docs/ui/layout/stack.png"),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_active_outlined,
                  color: Colors.black, size: 27),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                        height: 240,
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return MyCard(card:myCards[index]);
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 10);
                            },
                            itemCount: myCards.length),
                            shrinkwrap:true)
                  ],
                ))));
  }
}
