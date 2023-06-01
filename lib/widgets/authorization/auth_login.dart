import 'package:flutter/material.dart';

class AuthPass extends StatelessWidget {
  const AuthPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarVK(),
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("icons/vk.png", width: 22, height: 22),
                Text("ID",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              ],
            ),
            Container(
              height: 20,
            ),
            Text("Введите пароль",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Text(
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                  textAlign: TextAlign.center,
                  "Введите ваш текущий пароль, привязанный к ..."),
            ),
            textRegistration(),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent),
                    minimumSize:
                        MaterialStateProperty.all(Size(double.maxFinite, 53))),
                onPressed: () {
                  // ==================================
                },
                child: const Text(
                    style: TextStyle(color: Colors.white), "Продолжить")),
            Container(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarVK extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(40);

  const AppBarVK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Вконтакте"),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_outlined),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class textRegistration extends StatefulWidget {
  const textRegistration({Key? key}) : super(key: key);

  @override
  State<textRegistration> createState() => _textRegistrationState();
}

class _textRegistrationState extends State<textRegistration> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          TextField(obscureText: true,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintText: "Введите пароль",
                hintStyle: TextStyle(color: Colors.black26),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(10))),
          ),
          TextButton(
              onPressed: () {
                //==============================
              },
              child: Text("Забыли или не установили пароль?"))
        ],
      ),
    );
  }
}
