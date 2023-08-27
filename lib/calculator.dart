import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key, required this.title});
  final String title;
  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  String? gender;
  var uAge = TextEditingController();
  var uHeight = TextEditingController();
  var uWeight = TextEditingController();
  var uClear = TextEditingController();
  // ignore: unused_field
  num output = 0;

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: const Text('IndraDhanush BMI'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("assets/images/BG.jpg"),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: SizedBox(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: uAge,
                      keyboardType: TextInputType.number, // for keboard type
                      // enabled: false,
                      decoration: InputDecoration(
                          hintText: 'Enter Your Age',
                          // focusedBorder is used to give focus when user writing something
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(
                                color: Colors.deepOrange, width: 2),
                          ),

                          //enabledBorder is used to give default color
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(
                                color: Colors.blueAccent, width: 2),
                          ),

                          // disabledBorder is used for no input
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(
                                color: Colors.black45, width: 2),
                          ),
                          suffixText: "years",
                          prefixIcon: const Icon(
                            Icons.timer,
                            color: Colors.orange,
                          )),
                    ),
                    Container(
                      height: 10,
                    ),
                    TextField(
                      controller: uHeight,
                      keyboardType: TextInputType.number, // for keboard type
                      // enabled: false,
                      decoration: InputDecoration(
                          hintText: 'Enter Your height',
                          // focusedBorder is used to give focus when user writing something
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(
                                color: Colors.deepOrange, width: 2),
                          ),

                          //enabledBorder is used to give default color
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(
                                color: Colors.blueAccent, width: 2),
                          ),

                          // disabledBorder is used for no input
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(
                                color: Colors.black45, width: 2),
                          ),
                          //
                          // suffixText: "Username_exists",
                          suffixText: "cm",
                          prefixIcon: const Icon(
                            Icons.line_weight,
                            color: Colors.orange,
                          )),
                    ),
                    Container(
                      height: 10,
                    ),
                    TextField(
                      controller: uWeight,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Enter Your Weight",
                        // focusedBorder is used to give focus when user writing something
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: const BorderSide(
                              color: Colors.deepOrange, width: 2),
                        ),

                        //enabledBorder is used to give default color
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: const BorderSide(
                              color: Colors.blueAccent, width: 2),
                        ),

                        // disabledBorder is used for no input
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide:
                              const BorderSide(color: Colors.black45, width: 2),
                        ),
                        //

                        prefixIcon: const Icon(
                          Icons.line_weight,
                          color: Colors.green,
                        ),
                        suffixText: "Kg",
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: calculateBMI,
                            child: const Text(
                              "Calculate",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              uAge.clear();
                              uHeight.clear();
                              uWeight.clear();
                              output = 0;
                            });
                          },
                          child: const Text(
                            "Reset",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    // ignore: unnecessary_null_comparison
                    output == null
                        ? const Text('')
                        : Text(
                            'Your BMI is: $output ',
                            style: const TextStyle(
                              color: Colors.redAccent,
                              fontSize: 19.4,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                  ],
                ))),
      ),
    );
    return scaffold;
  }

  void calculateBMI() {
    double height = double.parse(uHeight.text) / 100;
    double weight = double.parse(uWeight.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;

    output = result;

    setState(() {});
  }
}
