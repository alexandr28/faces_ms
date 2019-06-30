import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  ProfileState createState() {
    return new ProfileState();
  }
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "YO",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              Column(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://avatars1.githubusercontent.com/u/5853361?s=460&v=4"),
                        radius: 70.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 112.0, top: 90.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23.0),
                              border:
                              Border.all(color: Colors.white, width: 3.0)),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images-na.ssl-images-amazon.com/images/I/513QyICz-NL.png"),
                            radius: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "Alexandr Campos",
                    style:
                    TextStyle(fontWeight: FontWeight.w800, fontSize: 25.0),
                  )
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                "Paginas",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://yt3.ggpht.com/a-/AAuE7mB45DXqAyoQm-2z0LYHOQMfp9FUaoq6uME-Cw=s900-mo-c-c0xffffffff-rj-k-no"),
                    radius: 18.0,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "Alexandr Campos",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              profile(),
              SizedBox(
                height: 30.0,
              ),
              preferences(),
              SizedBox(
                height: 30.0,
              ),
              account(),
            ],
          ),
        ),
      ),
    );
  }

  Widget profile() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Perfil",
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                radius: 18.0,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.brightness_1,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Estado Activo",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text("On",style: TextStyle(fontSize: 13.0,color: Colors.black45),),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                radius: 18.0,
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.verified_user,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Nombre de usuario",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "m.me",
                        style: TextStyle(color: Colors.black12),
                      ),
                      Text(
                        "/Alejandro2428",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget preferences() {
    bool value1 = true;
    //bool value2 = true;

    void onChangedValue(bool value) {
      setState(() {
        if (value) {
          value1 = false;
          value = false;
        } else {
          value1 = true;
          value = true;
        }
      });
    }

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Preferences",
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                radius: 18.0,
                backgroundColor: Colors.purple,
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "Notification & Sounds",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                radius: 18.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.network_cell,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "Data Saver",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                radius: 18.0,
                backgroundColor: Colors.lightBlue,
                child: Icon(
                  Icons.style,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "Story",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                radius: 18.0,
                backgroundColor: Colors.purple,
                child: Icon(
                  Icons.sms,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "SMS",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                radius: 18.0,
                backgroundColor: Colors.blueAccent,
                child: Icon(
                  Icons.people,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "People",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                radius: 18.0,
                backgroundColor: Colors.purple,
                child: Icon(
                  Icons.photo,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "Photos & Media",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                radius: 18.0,
                backgroundColor: Colors.black87,
                child: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "Secret Conversations",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                    radius: 18.0,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.supervised_user_circle,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "Chat Heads",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  )
                ],
              ),
              Switch(
                  value: value1,
                  onChanged: (bool value) => onChangedValue(value))
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                radius: 18.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.file_download,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "App Updates",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget account() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Account",
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                radius: 18.0,
                backgroundColor: Colors.purple,
                child: Icon(
                  Icons.switch_camera,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "Switch Account",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                radius: 18.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "Account Settings",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                radius: 18.0,
                backgroundColor: Colors.deepOrange,
                child: Icon(
                  Icons.report_problem,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "Report a problem",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                radius: 18.0,
                backgroundColor: Colors.lightBlue,
                child: Icon(
                  Icons.help,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "Help",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                //backgroundImage: NetworkImage("https://scontent.fgau3-1.fna.fbcdn.net/v/t1.0-9/15179002_1802217983386306_4909899980543135751_n.jpg?_nc_cat=108&_nc_ht=scontent.fgau3-1.fna&oh=8583f6b1200fe6a3e8c81b9e098e8ef4&oe=5CCD826C"),
                radius: 18.0,
                backgroundColor: Colors.black45,
                child: Icon(
                  Icons.note,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "Legal & Policies",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
