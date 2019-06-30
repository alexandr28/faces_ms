import 'package:flutter/material.dart';


class People extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personas",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25.0),
        ),
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Navigator.pushNamed(context, '/views/profile'),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16.0, bottom: 8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars1.githubusercontent.com/u/5853361?s=460&v=4"),
              radius: 25.0,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.contacts,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.person_add,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.message,
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/views/chats');
                }),
            SizedBox(
              width: 40.0,
            ),
            IconButton(
                icon: Icon(
                  Icons.people,
                  //color: Colors.grey,
                  size: 30.0,
                ),
                onPressed: () {}),
            SizedBox(
              width: 40.0,
            ),
            IconButton(
              icon: Icon(
                Icons.explore,
                size: 30.0,
                //color: Colors.grey,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/views/discover');
              },
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 18.0, bottom: 8.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding:
              const EdgeInsets.only(top: 8.0, right: 16.0, bottom: 16.0),
              child: Container(
                height: 45.0,
                width: 210.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.black12),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "Buscar",
                  ),
                ),
              ),
            ),
            Container(height: 130.0, child: Circular()),
            SizedBox(
              height: 16.0,
            ),
            Text(
              "ACTIVOS",
              style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 16.0,
            ),
            CircleProfs(
              "RubenVG",
              "http://diaadiatrujillo.com/wp-content/uploads/2019/01/2-1.jpg",
            ),
            SizedBox(
              height: 7.0,
            ),
            CircleProfs(
              "Esther",
              "https://images.pexels.com/photos/1755385/pexels-photo-1755385.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            ),
            SizedBox(
              height: 7.0,
            ),
            CircleProfs(
              "Rouse",
              "https://images.pexels.com/photos/1766938/pexels-photo-1766938.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            ),
            SizedBox(
              height: 7.0,
            ),
            CircleProfs(
              "Anita",
              "https://images.pexels.com/photos/1399288/pexels-photo-1399288.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            ),
            SizedBox(
              height: 7.0,
            ),
            CircleProfs(
              "Gabriela",
              "https://images.pexels.com/photos/1684915/pexels-photo-1684915.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            ),
            SizedBox(
              height: 7.0,
            ),
            CircleProfs(
              "Marlon",
              "https://images.pexels.com/photos/1759549/pexels-photo-1759549.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            ),
            SizedBox(
              height: 7.0,
            ),
            CircleProfs(
              "Carlos",
              "https://images.pexels.com/photos/1757011/pexels-photo-1757011.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            ),
            SizedBox(
              height: 7.0,
            ),
            CircleProfs(
              "Andres",
              "https://images.pexels.com/photos/1756366/pexels-photo-1756366.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            ),
            SizedBox(
              height: 7.0,
            ),
            CircleProfs(
              "David",
              "https://images.pexels.com/photos/935993/pexels-photo-935993.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            )
          ],
        ),
      ),
    );
  }

  CircleProfs(String name, String imgUrl) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Stack(
                    fit: StackFit.passthrough,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(imgUrl),
                        radius: 18.0,
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.fromLTRB(24.0, 24.0, 3.0, 2.0),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          decoration: BoxDecoration(
                              color:
                              Colors.green,
                              border: Border.all(
                                width: 2.0,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(15.0)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 13.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Container(
              height: 30.0,
              width: 30.0,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(45.0),
              ),
              child: Center(
                  child: Icon(
                    Icons.ac_unit,
                    size: 18.0,
                  )),
            )
          ],
        ),
      ),
    );
  }

  CircleProfss(String name, String imgUrl,String imgStatus) {
    return Container(
      //height: 380.0,
        width: 81.0,
        decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(imgStatus),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(4.0)
        ),
        child: Stack(
          children: <Widget>[
            Container(decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(4.0)
            ),),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top:5.0,left: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 3.0,
                      )
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(imgUrl),
                    radius: 15.0,
                  ),
                ),
              ),
            ),
            Align(alignment: Alignment.bottomLeft,child: Padding(
              padding: const EdgeInsets.only(left:12.0,bottom: 10.0),
              child: Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
            )),
          ],
        ));
  }

  Widget Circular() {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
            height: 130.0,
            width: 81.0,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Stack(
              children: <Widget>[
                Align(alignment: Alignment.topLeft,child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.add_circle),
                )),
                Align(child: Padding(
                  padding: const EdgeInsets.only(bottom:8.0,left: 8.0),
                  child: Text("Agrega una historia",style: TextStyle(fontSize: 13.0),),
                ),alignment: Alignment.bottomCenter,),
              ],
            )
        ),
        SizedBox(
          width: 7.0,
        ),
        CircleProfss(
            "RuvenVG",
            "http://diaadiatrujillo.com/wp-content/uploads/2019/01/2-1.jpg",
            "https://images.pexels.com/photos/297755/pexels-photo-297755.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        SizedBox(
          width: 7.0,
        ),
        CircleProfss(
            "Esther",
            "https://images.pexels.com/photos/1755385/pexels-photo-1755385.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            "https://images.pexels.com/photos/1415131/pexels-photo-1415131.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        SizedBox(
          width: 7.0,
        ),
        CircleProfss(
            "Rouse",
            "https://images.pexels.com/photos/1766938/pexels-photo-1766938.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            "https://images.pexels.com/photos/1045535/pexels-photo-1045535.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        SizedBox(
          width: 7.0,
        ),
        CircleProfss(
            "Anita",
            "https://images.pexels.com/photos/1399288/pexels-photo-1399288.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            "https://images.pexels.com/photos/1013326/pexels-photo-1013326.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        SizedBox(
          width: 7.0,
        ),
        CircleProfss(
            "Gabriela",
            "https://images.pexels.com/photos/1684915/pexels-photo-1684915.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            "https://images.pexels.com/photos/1766478/pexels-photo-1766478.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        SizedBox(
          width: 7.0,
        ),
        CircleProfss(
            "Marlon",
            "https://images.pexels.com/photos/1759549/pexels-photo-1759549.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            "https://images.pexels.com/photos/1051076/pexels-photo-1051076.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        SizedBox(
          width: 7.0,
        ),
        CircleProfss(
            "Carlos",
            "https://images.pexels.com/photos/1757011/pexels-photo-1757011.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            "https://images.pexels.com/photos/1738623/pexels-photo-1738623.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        SizedBox(
          width: 7.0,
        ),
        CircleProfss(
            "Andres",
            "https://images.pexels.com/photos/1756366/pexels-photo-1756366.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            "https://images.pexels.com/photos/373289/pexels-photo-373289.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        SizedBox(
          width: 7.0,
        ),
        CircleProfss(
            "David",
            "https://images.pexels.com/photos/935993/pexels-photo-935993.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            "https://images.pexels.com/photos/1769332/pexels-photo-1769332.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        SizedBox(width: 7.0,)
      ],
    );
  }
}
