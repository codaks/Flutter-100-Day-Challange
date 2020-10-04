import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  int total_page = 4;

  void _onScroll() {
    print("ss");
  }

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(initialPage: 0)..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage(
              assetimage: 'assets/images/img1.jpg',
              title: 'Mussoorie',
              description:
                  'Mussoorie is a hill station and a municipal board in the Dehradun district of the Indian state of Uttarakhand. It is about 35 kilometres from the state capital of Dehradun and 290 km north of the national capital of New Delhi',
              curPage: 1,
              rating: 4),
          makePage(
              assetimage: 'assets/images/img2.jpg',
              title: 'River Ganga',
              description:
                  'The Ganges or Ganga is a trans-boundary river of Asia which flows through India and Bangladesh. The 2,704 km river originates from the Gangotri Glacier of western Himalayas in the Indian state of ...',
              curPage: 2,
              rating: 5),
          makePage(
              assetimage: 'assets/images/img3.jpg',
              title: 'Himalayan Mountains',
              description:
                  "The Himalayas, or Himalaya, is a mountain range in Asia separating the plains of the Indian subcontinent from the Tibetan Plateau. The range has many of Earth's highest peaks, including the highest, Mount Everest, at the border between Nepal and China.",
              curPage: 3,
              rating: 5),
          makePage(
              assetimage: 'assets/images/img4.jpg',
              title: 'Taj Mahal',
              description:
                  "The Taj Mahal is an ivory-white marble mausoleum on the southern bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan ",
              curPage: 4,
              rating: 3)
        ],
      ),
    );
  }

  Widget makePage({assetimage, title, description, curPage, rating}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(assetimage), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2)
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    curPage.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/4',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ),
                      Text(
                        rating.toString() + ".0",
                        style: TextStyle(color: Colors.white70),
                      ),
                      Text(
                        '(2300)',
                        style: TextStyle(color: Colors.white38, fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      description,
                      style: TextStyle(
                          color: Colors.white.withOpacity(.7),
                          height: 1.9,
                          fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'READ MORE',
                    style: TextStyle(
                        color: Colors.white.withOpacity(.7),
                        height: 1.9,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
