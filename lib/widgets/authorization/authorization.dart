import 'package:flutter/material.dart';
import 'package:vk/widgets/authorization/registration.dart';

import 'auth_second.dart';

class Authorization extends StatelessWidget {
  const Authorization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(248, 240, 240, 240),
      body: Column(
        //mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("icons/vk.png",width: 25,height: 25),
                const Text("вконтатке",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            height: 12,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              children: [
                const Text("Вход ВКонтакте",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                const Text(
                    textAlign: TextAlign.center,
                    "Мобильная версия поможет вам оставаться ВКонтакте, даже если вы далеко от компьютера."),
                Container(
                  height: 25,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueAccent),
                        minimumSize: MaterialStateProperty.all(
                            Size(double.maxFinite, 45))),
                    onPressed:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const AuthSecond();
                      }));
                    },
                    child: const Text(
                        style: TextStyle(color: Colors.white),
                        "Войти по телефону или почте")),
              ],
            ),
          ),
          Container(
            height: 12,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      minimumSize: MaterialStateProperty.all(
                          Size(double.maxFinite, 45))),
                  onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const Registration();
                    }));
                  },
                  child: const Text(
                      style: TextStyle(color: Colors.white),
                      "Зарегистрироваться")))
        ],
      ),
    );
  }
}
