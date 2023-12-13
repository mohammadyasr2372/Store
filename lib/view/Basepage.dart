// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, camel_case_types, use_build_context_synchronously, prefer_interpolation_to_compose_strings, must_be_immutable

import 'package:exam_12/main.dart';
import 'package:flutter/material.dart';

int selectedIndex = 0;

class Basepage extends StatefulWidget {
  const Basepage({super.key});

  @override
  State<Basepage> createState() => _BasepageState();
}

TextEditingController search = TextEditingController();

class _BasepageState extends State<Basepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: const Color.fromARGB(255, 76, 167, 240),
          leading: Icon(Icons.notes_outlined),
          // title: (Text(
          //     config.get<SharedPreferences>().getString('phone').toString())),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(Icons.shopping_bag_rounded),
            )
          ],
          centerTitle: true,
          elevation: 0,
        ),
        body: pages[selectedIndex],
        bottomNavigationBar: NavigationBar(
          elevation: 0,
          indicatorShape: CircleBorder(),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          // animationDuration: Duration(seconds: 3),
          onDestinationSelected: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          selectedIndex: selectedIndex,
          destinations: [
            NavigationDestination(
                // tooltip: null,
                // selectedIcon: Icon(Icons.facebook),
                icon: Icon(Icons.home),
                label: 'HomePage'),
            NavigationDestination(icon: Icon(Icons.badge), label: 'badge'),
            NavigationDestination(
                icon: Icon(Icons.favorite), label: 'favorite'),
            NavigationDestination(
                icon: Icon(Icons.notes_outlined), label: 'store')
          ],
        ));
  }
}

List<Widget> pages = [
  home(),
  Scaffold(),
  Scaffold(),
  Scaffold(),
];

class home extends StatefulWidget {
  const home({
    super.key,
  });

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hello',
                style: TextStyle(
                  color: Color(0xFF1D1E20),
                  fontSize: 28,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0.04,
                  letterSpacing: -0.21,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Welcome to Laza.',
                style: TextStyle(
                  color: Color(0xFF8F959E),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0.07,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 400,
                height: 40,
                child: TextFormField(
                  onChanged: (search) {
                    setState(() {
                      one.serach(search);
                    });
                  },
                  controller: search,
                  decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 10),
                        child: Icon(Icons.search),
                      ),
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      hintText: 'Search .....',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Choose Brand',
                style: TextStyle(
                  color: Color(0xFF1D1E20),
                  fontSize: 17,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 0.06,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 115,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F6FA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Container(
                    width: 115,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F6FA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Container(
                    width: 115,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F6FA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'New Arraival',
                style: TextStyle(
                  color: Color(0xFF1D1E20),
                  fontSize: 17,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 0.06,
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 10000,
              child: GridView.builder(
                itemCount: prodects.length,
                padding: EdgeInsets.all(10),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageProdect(
                          index: index,
                        ),
                      ),
                    );
                  },
                  child: Hero(
                    tag: index,
                    child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            // color: Colors.red,
                            image: NetworkImage(
                                prodects.elementAt(index).images.elementAt(0)),
                            fit: BoxFit.fill,
                          ),
                        ),
                        width: 30,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Text(
                            prodects.elementAt(index).title +
                                '\n' +
                                prodects.elementAt(index).description +
                                '\n' +
                                prodects.elementAt(index).price.toString(),
                            style: TextStyle(
                              color: Color(0xFF1D1E20),
                              fontSize: 11,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0.13,
                            ),
                          ),
                        )),
                  ),
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    // childAspectRatio: 5,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                    crossAxisSpacing: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageProdect extends StatelessWidget {
  PageProdect({super.key, required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(prodects.elementAt(index).title),
          Hero(
              tag: index,
              child:
                  Image.network(prodects.elementAt(index).images.elementAt(0))),
          Text(prodects.elementAt(index).description),
          Text(prodects.elementAt(index).price.toString()),
        ],
      ),
    );
  }
}
