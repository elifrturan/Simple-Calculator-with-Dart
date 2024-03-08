import 'package:flutter/material.dart';

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({super.key});

  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  String ilkDeger = "";
  String ikinciDeger = "";
  var tfSonuc = TextEditingController();
  int sonuc = 0;
  String islemTuru = "";

  @override
  Widget build(BuildContext context) {

    var ekranBoyutu = MediaQuery.of(context);
    var ekranYuksekligi = ekranBoyutu.size.height;

    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: const Text("Hesap Makinesi", style: TextStyle(color: Colors.orange),),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: ekranYuksekligi/4,right: 10),
              child: TextField(
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
                controller: tfSonuc,
                keyboardType: TextInputType.numberWithOptions(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("C",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                          side: BorderSide(color: Colors.black45, width: 1)
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        tfSonuc.text = "";
                        ilkDeger = "";
                        ikinciDeger = "";
                        islemTuru = "";
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("+/-",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.black45, width: 1),
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        tfSonuc.text = "";
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("%",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.black45, width: 1),
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        tfSonuc.text = "%";
                        islemTuru = "%";
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("÷",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.black45, width: 1),
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        tfSonuc.text = "÷";
                        islemTuru = "÷";
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("7",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                          side: BorderSide(color: Colors.black45, width: 1)
                      ),

                    ),
                    onPressed: (){
                      setState(() {
                        if(islemTuru == ""){
                          ilkDeger += "7";
                          tfSonuc.text = ilkDeger;
                        }
                        else if(islemTuru != "="){
                          ikinciDeger += "7";
                          tfSonuc.text = ikinciDeger;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("8",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.black45, width: 1),
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        if(islemTuru == ""){
                          ilkDeger += "8";
                          tfSonuc.text = ilkDeger;
                        }
                        else if(islemTuru != "="){
                          ikinciDeger += "8";
                          tfSonuc.text = ikinciDeger;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("9",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.black45, width: 1),
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        if(islemTuru == ""){
                          ilkDeger += "9";
                          tfSonuc.text = ilkDeger;
                        }
                        else if(islemTuru != "="){
                          ikinciDeger += "9";
                          tfSonuc.text = ikinciDeger;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("x",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.black45, width: 1),
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        tfSonuc.text = "x";
                        islemTuru = "x";
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("4",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                          side: BorderSide(color: Colors.black45, width: 1)
                      ),

                    ),
                    onPressed: (){
                      setState(() {
                        if(islemTuru == ""){
                          ilkDeger += "4";
                          tfSonuc.text = ilkDeger;
                        }
                        else if(islemTuru != "="){
                          ikinciDeger += "4";
                          tfSonuc.text = ikinciDeger;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("5",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.black45, width: 1),
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        if(islemTuru == ""){
                          ilkDeger += "5";
                          tfSonuc.text = ilkDeger;
                        }
                        else if(islemTuru != "="){
                          ikinciDeger += "5";
                          tfSonuc.text = ikinciDeger;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("6",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.black45, width: 1),
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        if(islemTuru == ""){
                          ilkDeger += "6";
                          tfSonuc.text = ilkDeger;
                        }
                        else if(islemTuru != "="){
                          ikinciDeger += "6";
                          tfSonuc.text = ikinciDeger;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("-",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.black45, width: 1),
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        tfSonuc.text = "-";
                        islemTuru = "-";
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("1",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                          side: BorderSide(color: Colors.black45, width: 1)
                      ),

                    ),
                    onPressed: (){
                      setState(() {
                        if(islemTuru == ""){
                          ilkDeger += "1";
                          tfSonuc.text = ilkDeger;
                        }
                        else if(islemTuru != "="){
                          ikinciDeger += "1";
                          tfSonuc.text = ikinciDeger;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("2",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.black45, width: 1),
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        if(islemTuru == ""){
                          ilkDeger += "2";
                          tfSonuc.text = ilkDeger;
                        }
                        else if(islemTuru != "="){
                          ikinciDeger += "2";
                          tfSonuc.text = ikinciDeger;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("3",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.black45, width: 1),
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        if(islemTuru == ""){
                          ilkDeger += "3";
                          tfSonuc.text = ilkDeger;
                        }
                        else if(islemTuru != "="){
                          ikinciDeger += "3";
                          tfSonuc.text = ikinciDeger;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("+",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.black45, width: 1),
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        tfSonuc.text = "+";
                        islemTuru = "+";
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("0",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                          side: BorderSide(color: Colors.black45, width: 1)
                      ),

                    ),
                    onPressed: (){
                      setState(() {
                        if(islemTuru == ""){
                          ilkDeger += "0";
                          tfSonuc.text = ilkDeger;
                        }
                        else if(islemTuru != "="){
                          ikinciDeger += "0";
                          tfSonuc.text = ikinciDeger;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text(",",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.black45, width: 1),
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        tfSonuc.text = ",";
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                    child: const Text("=",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.black45, width: 1),
                      ),
                    ),
                    onPressed: (){
                      if(islemTuru == "+"){
                        int ilk_deger = int.parse(ilkDeger);
                        int ikinci_deger = int.parse(ikinciDeger);
                        sonuc = ilk_deger + ikinci_deger;
                        tfSonuc.text = sonuc.toString();
                      }
                      else if(islemTuru == "-"){
                        int ilk_deger = int.parse(ilkDeger);
                        int ikinci_deger = int.parse(ikinciDeger);
                        sonuc = ilk_deger - ikinci_deger;
                        tfSonuc.text = sonuc.toString();
                      }
                      else if(islemTuru == "x"){
                        int ilk_deger = int.parse(ilkDeger);
                        int ikinci_deger = int.parse(ikinciDeger);
                        sonuc = ilk_deger * ikinci_deger;
                        tfSonuc.text = sonuc.toString();
                      }
                      else if(islemTuru == "÷"){
                        double ilk_deger = double.parse(ilkDeger);
                        double ikinci_deger = double.parse(ikinciDeger);
                        double sonuc = ilk_deger / ikinci_deger;
                        tfSonuc.text = sonuc.toString();
                      }
                      else if(islemTuru == "%"){
                        int ilk_deger = int.parse(ilkDeger);
                        int ikinci_deger = int.parse(ikinciDeger);
                        sonuc = ilk_deger % ikinci_deger;
                        tfSonuc.text = sonuc.toString();
                      }
                      else{
                        tfSonuc.text = "Gecersiz";
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
