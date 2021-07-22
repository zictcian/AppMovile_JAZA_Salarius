import 'package:dotted_line/dotted_line.dart';
import 'package:finance/profile.dart';
import 'package:finance/register.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class MainPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#262626"),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Center(
                child: Image.asset(
                  'images/logo.png',
                  height: 100,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Material(
                  elevation: 20.0,
                  borderRadius: BorderRadius.circular(40),
                  color: HexColor("0D0D0D"),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    autofocus: false,
                    decoration: InputDecoration(
                        hintStyle: GoogleFonts.openSans(
                            color: HexColor("A6A6A6"),
                            fontSize: 17,
                            fontWeight: FontWeight.normal),
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 26.0, bottom: 5),
                          child: new Icon(Icons.mail_outline_outlined,
                              color: HexColor("A6A6A6"), size: 22),
                        ),
                        hintText: 'Ingresa tu usuario',
                        fillColor: HexColor("#0D0D0D"),
                        filled: true,
                        contentPadding:
                            EdgeInsets.fromLTRB(-30.0, 30.0, 20.0, 20.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide:
                                BorderSide(color: HexColor("#595959"), width: 3.0))),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Material(
                  elevation: 20.0,
                  borderRadius: BorderRadius.circular(40),
                  color: HexColor("0D0D0D"),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    autofocus: false,
                    decoration: InputDecoration(
                        hintStyle: GoogleFonts.openSans(
                            color: HexColor("A6A6A6"),
                            fontSize: 17,
                            fontWeight: FontWeight.normal),
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 26.0, bottom: 5),
                          child: new Icon(Icons.lock_open_outlined,
                              color: HexColor("A6A6A6"), size: 22),
                        ),
                        hintText: 'Ingresa tu contrasena',
                        fillColor: HexColor("#0D0D0D"),
                        filled: true,
                        contentPadding:
                            EdgeInsets.fromLTRB(-10.0, 30.0, 20.0, 20.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide:
                                BorderSide(color: HexColor("#595959"), width: 3.0))),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                  decoration: new BoxDecoration(
                    color: HexColor("24BF48"),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      //background color of box
                    ],
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: IconButton(
                        onPressed: () {
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) => new Profile(),
                          );

                          Navigator.of(context).push(route);
                        },
                        iconSize: 30.0,
                        icon: Icon(
                          Icons.forward,
                        ),
                        color: HexColor("#ffffff"),
                      ))),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                    onPressed: () {
                      //var route = new MaterialPageRoute(
                      //builder: (BuildContext context) => new Register(),
                      //);
                      //Navigator.of(context).push(route);
                    },
                    child: new Text("Registrate",
                        style: TextStyle(
                          fontSize: 35,
                          color: HexColor("A6A6A6"),
                        ),
                        ),

                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 53.0),
                child: DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.grey[600],
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 16,
              ),
            ],
          ),
        ));
  }
}
