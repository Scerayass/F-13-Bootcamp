import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 170, 200, 167),
            /*
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFDB4437),
                Color(0xFFF4B400),
                Color(0xFF4285F4),
              ],
            ),
            */
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 48.0),
              Image(
                image: AssetImage('assets/images/fresh_logo.png'),
                height: 200.0,
              ),
              SizedBox(height: 16.0),
              Text(
                'Hesap Oluştur',
                style: TextStyle(
                  color: Color.fromARGB(248, 255, 255, 255),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 48.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Ad',
                        hintStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(Icons.person, color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 24.0),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(Icons.email, color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 24.0),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Şifre',
                        hintStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 24.0),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Şifre Tekrar',
                        hintStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 48.0),
                    GestureDetector(
                      child: ElevatedButton(
                        onPressed: () {
                          //KAYIT OL TUŞUNA BASTIKTAN SONRA NE OLSUN?
                        },
                        child: Text('Hesap Oluştur'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Color.fromARGB(255, 0, 0, 0),
                          padding: EdgeInsets.symmetric(
                            horizontal: 64.0,
                            vertical: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}