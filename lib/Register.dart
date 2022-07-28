import 'package:flutter/material.dart';
import 'package:flutter_coba/calcu.dart';

class Registrasi extends StatefulWidget {
  const Registrasi({Key? key}) : super(key: key);

  @override
  State<Registrasi> createState() => _RegistrasiState();

}

class _RegistrasiState extends State<Registrasi> {

  TextEditingController ctrUsername = TextEditingController();
  TextEditingController ctrNama = TextEditingController();


  Widget txtInput(TextEditingController controller, String username,){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: username
      ),
    );
  }

  Widget btnRegister(String btnSubmit){
    return Container(
      width: 125,
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        },
        child: Text (btnSubmit),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registrasi"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            txtInput(ctrUsername, "Username"),
            SizedBox(height: 10,),
            txtInput(ctrNama, "Nama"),
            SizedBox(
              height: 20,
            ),
            btnRegister("Submit")
          ],
        ),
      ),
    );
  }
}