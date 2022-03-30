import 'package:flutter/material.dart';
import 'package:grocery_app/AppBar.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController();
  TextEditingController searchcontroller = TextEditingController();

  List<Widget> liste = [
    RecommendedCategory(
      categorynamee: "Clothes",
      imageAsset: "assets/clothes.jpg",
    ),
    RecommendedCategory(
      categorynamee: "Phones",
      imageAsset: "assets/phones.jpg",
    ),
    RecommendedCategory(
      categorynamee: "Computers",
      imageAsset: "assets/computer.jpg",
    )
  ];

  List<Widget> categoriesList = [
    CategoryWidget(
      categoryName: "Phones",
      imageName: "assets/phones.jpg",
    ),
    CategoryWidget(
      categoryName: "Clothes",
      imageName: "assets/clothes.jpg",
    ),
    CategoryWidget(
      categoryName: "Computers",
      imageName: "assets/computer.jpg",
    ),
    CategoryWidget(
      categoryName: "Accesories",
      imageName: "assets/accesories.jpg",
    ),
    CategoryWidget(
      categoryName: "Shoes",
      imageName: "assets/shoes.png",
    ),
    CategoryWidget(
      categoryName: "Toys",
      imageName: "assets/toys.jpg",
    ),
    CategoryWidget(
      categoryName: "Kitchen",
      imageName: "assets/kitchen.jpg",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            body: Container(
              decoration: BoxDecoration(color: Color.fromRGBO(50, 60, 70, 1)),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: HandMadeAppBar(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 11.0),
                    child: Text(
                      "Recommended categories for you",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(8),
                        itemCount: liste.length,
                        itemBuilder: (BuildContext context, int index) {
                          return liste[index];
                        }),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 10),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  TextField(
                    controller: searchcontroller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: "Search category",
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          itemCount: categoriesList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return categoriesList[index];
                          }),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  String categoryName;
  String imageName;

  CategoryWidget({this.categoryName, this.imageName});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.black,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: ExactAssetImage(imageName),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black26,
              ),
              child: Center(
                child: Text(
                  categoryName,
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendedCategory extends StatelessWidget {
  String categorynamee;
  String imageAsset;

  RecommendedCategory({this.categorynamee, this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 120,
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 4,
              blurRadius: 6,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 180.0,
                height: 120.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: ExactAssetImage(imageAsset),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  color: Colors.transparent,
                ),
              ),
            ),
            Container(
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black26,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  categorynamee,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
