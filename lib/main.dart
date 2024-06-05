import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.brown),
        home:const HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(milliseconds: 400),
        showCloseIcon: true,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Famicart'),
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 10,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){MySnackBar("I am Search", context);},  icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("I am Language", context);},  icon: Icon(Icons.language)),
          IconButton(onPressed: (){MySnackBar("I am Settings", context);},  icon: Icon(Icons.settings)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: () {
          MySnackBar('I am Floating button', context);
        },
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Bag"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
        ],
        onTap: (int index) {
          if(index == 0) {
            MySnackBar('I am Home', context);
          }
          if(index == 1) {
            MySnackBar('I am Category', context);
          }
          if(index == 2) {
            MySnackBar('I am Bag', context);
          }
          if(index == 2) {
            MySnackBar('I am Menu', context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text("Mobarak Hossain"),
                accountEmail: Text("mobarakcse1@gmail.com"),
                currentAccountPicture: Padding(
                  padding: EdgeInsets.only(bottom: 10), // Add padding at the bottom
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://scontent.fdac5-1.fna.fbcdn.net/v/t39.30808-6/432771510_3680372458902779_5663389822949425721_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHHMeS67x-OhGSJqZVXw3ucTlcVhUYL0edOVxWFRgvR5zvAzTOwUZOQ4ej623hPNmeZV0QpYLSQgDZxJOCtwM7A&_nc_ohc=f7p6YAf3AfQQ7kNvgFRnCLr&_nc_ht=scontent.fdac5-1.fna&oh=00_AYAzWJxqwfkD9YqbyPK94EvK9sTzjjzTmjdlnhQJOklhNg&oe=6665CC02'), // Replace with your image URL
                  ),
                ),
                onDetailsPressed: () {MySnackBar('This is profile', context);},
              )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: ()
                {
                  MySnackBar("I am Home", context);
                },
            ),

            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact'),
              onTap: ()
                {
                  MySnackBar("I am Contact", context);
                },
            ),

            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              onTap: ()
                {
                  MySnackBar("I am Email", context);
                },
            ),

            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              onTap: ()
                {
                  MySnackBar("I am Phone", context);
                },
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: ()
                {
                  MySnackBar("I am Profile", context);
                },
            ),
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 120,
            child: Image.network("https://admin.famicart.com/storage/528/fit-crakers-biscuit.png"),
          ),
          Container(
            height: 100,
            width: 120,
            child: Image.network("https://admin.famicart.com/storage/649/riko-crispy-salty-biscuit.png"),
          ),
          Container(
            height: 100,
            width: 120,
            child: Image.network("https://admin.famicart.com/storage/502/energy-plus-biscuit.png"),
          ),
        ],
      ),
    );
  }
  
}