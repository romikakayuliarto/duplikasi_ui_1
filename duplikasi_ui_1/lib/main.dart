import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Item service coffee'),
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(40, 30, 40, 60),
              decoration: BoxDecoration(
              color: Colors.brown[50],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), 
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(180), 
                bottomRight: Radius.circular(180)
                ),
                boxShadow: [BoxShadow(
                  color: Colors.brown,
                  blurRadius: 6,
                  offset: Offset(1, 3),
                )]
            ),
            child: 
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset('assets/images/kopi.jpg',
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                  ), 
                ),
                SizedBox(
                  height: 16,
                ),
                Text('Coffee Latte',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[900],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'A caffè latte is simply a shot or two of bold, tasty espresso with fresh, sweet steamed milk over it.',
                  style: TextStyle(
                    fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30.0,),
                TextButton(
                  onPressed: () {
                    print("object: Explore More");
                  },
                  style: ButtonStyle(
                    padding: WidgetStateProperty.resolveWith<EdgeInsetsGeometry>((states){
                      return const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 16.0,
                      );
                    }),
                    backgroundColor: WidgetStateProperty.resolveWith<Color?>((states){
                      return Colors.brown[700];
                    }),
                    foregroundColor: WidgetStateProperty.resolveWith<Color?>((states){
                      return Colors.white;
                    }),
                    shape: WidgetStateProperty.resolveWith<OutlinedBorder>((states){
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      );
                   }),
                  ),
                  child: const Text("Explore Now"),
            ),
          ],
          )
          ),
          ],
        ),
      ),
    );
  }
}
