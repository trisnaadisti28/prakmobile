import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login_screen.dart';

class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login App"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white),
              ),
              child: IconButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                icon: const Icon(Icons.logout_rounded),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Container(
        color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "TEUME ANNYEONG 🎉",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 20),
            ClipOval(
              child: Image.asset(
                "assets/images/hyunsuk.png",
                height: 150,
                width: 150,
                fit: BoxFit
                    .cover, // Anda bisa mengganti ini sesuai dengan kebutuhan
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Choi Hyunsuk "
                  "Berhasil login",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
      ),
    );
  }
}
