import 'package:dapur_negeriku/screens/home.dart';
import 'package:flutter/material.dart';

class Daftar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF54632D),
      ),
      home: DaftarScreen(),
    );
  }
}

class DaftarScreen extends StatefulWidget {

  @override
  _DaftarScreenState createState() => _DaftarScreenState();
}

class _DaftarScreenState extends State<DaftarScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo dapur negeriku.png',
              height: 160,
            ),
            SizedBox(height: 10),

          
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Color(0xFF54632D)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF54632D)),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

           
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Color(0xFF54632D)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF54632D)),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            
            DropdownButtonFormField<String>(
              items: <String>['Owner', 'Pegawai'] 
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                
              },
              decoration: InputDecoration(
                labelText: 'Sebagai',
                labelStyle: TextStyle(color: Color(0xFF54632D)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF54632D)),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            
            TextField(
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Color(0xFF54632D)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF54632D)),
                ),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Color(0xFF54632D),
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible; 
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),

            
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => home() ));
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF54632D),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  'Daftar',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),

        
          ],
        ),
      ),
    );
  }
}
