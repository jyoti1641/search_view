import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

class ContractPage extends StatefulWidget {
  const ContractPage({super.key});

  @override
  State<ContractPage> createState() => _ContractPageState();
}

class _ContractPageState extends State<ContractPage> {
  int _currentStep = 0;
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  // Controllers for each step's TextField
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  final TextEditingController _controller5 = TextEditingController();
  final TextEditingController _controller6 = TextEditingController();

  int selectedValue = 0;
  // Move formKeys to a higher scope
  final List<GlobalKey<FormState>> formKeys = [
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
  ];

  void _onStepContinue() {
    if (_currentStep < formKeys.length) {
      final FormState? currentFormState = formKeys[_currentStep].currentState;
      if (currentFormState != null && currentFormState.validate()) {
        setState(() {
          _currentStep += 1;
        });
      } else {
        print('Validation failed');
      }
    } else if (_currentStep == formKeys.length) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Contract Complete!'),
            content: const Text('Do you want to submit it for verification?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  // Submit form here
                  Navigator.pop(context); // Close the dialog
                },
                child: const Text('Submit'),
              ),
            ],
          );
        },
      );
    }
  }

  void _onStepCancel() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep -= 1;
      });
    }
  }

  List<Step> stepList() => [
        //buying or selling
        Step(
          title: const Text(''),
          content: Form(
            key: formKeys[0],
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: selectedValue == 0
                          ? Color(0xFF180662)
                          : Color(0xFFD9D9D9),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: RadioListTile(
                    value: 0,
                    groupValue: selectedValue,
                    title: const Text(
                      'Buying',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87),
                    ),
                    selected: selectedValue == 0,
                    activeColor: Color(0xFF180662),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = 0;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: selectedValue == 1
                          ? Color(0xFF180662)
                          : Color(0xFFD9D9D9),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: RadioListTile(
                    value: 1,
                    groupValue: selectedValue,
                    title: const Text(
                      'Selling',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87),
                    ),
                    selected: selectedValue == 1,
                    activeColor: Color(0xFF180662),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = 1;
                      });
                    },
                  ),
                ),
              ],
            ),
            // child: TextField(
            //   controller: _controller1,
            //   decoration: const InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: '1',
            //   ),
            // ),
          ),
          isActive: _currentStep >= 0,
          state: _currentStep > 0 ? StepState.complete : StepState.indexed,
        ),
        //Service type/Domain
        Step(
          title: const Text(''),
          content: Form(
            key: formKeys[1],
            child: TextFormField(
              autofocus: true,
              controller: _controller2,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                //prefixIcon: const Icon(Icons.domain_add_rounded),
                prefixIconColor: Color(0xFF180662),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color(0xFFD9D9D9),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color(0xFF180662),
                  ),
                ),
                hintText: 'Service type/Domain eg. Logo designing',
                hintStyle: const TextStyle(
                    color: Color(0xFF7D7B7B), fontWeight: FontWeight.w400),
              ),
            ),
          ),
          isActive: _currentStep >= 1,
          state: _currentStep > 1 ? StepState.complete : StepState.indexed,
        ),
        //project Name
        Step(
          title: const Text(''),
          content: Form(
            key: formKeys[2],
            child: TextFormField(
              autofocus: true,
              controller: _controller3,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                // prefixIcon: const Icon(Icons.abc_rounded),
                prefixIconColor: Color(0xFF180662),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color(0xFFD9D9D9),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color(0xFF180662),
                  ),
                ),
                hintText: 'Project Name',
                hintStyle: const TextStyle(
                    color: Color(0xFF7D7B7B), fontWeight: FontWeight.w400),
              ),
            ),
          ),
          isActive: _currentStep >= 2,
          state: _currentStep > 2 ? StepState.complete : StepState.indexed,
        ),
        //Discription (detail)
        Step(
          title: const Text(''),
          content: Form(
            key: formKeys[3],
            child: TextFormField(
              autofocus: true,
              controller: _controller4,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                // prefixIcon: const Icon(Icons.data_object_rounded),
                prefixIconColor: Color(0xFF180662),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color(0xFFD9D9D9),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color(0xFF180662),
                  ),
                ),
                hintText: 'Discription',
                hintStyle: const TextStyle(
                    color: Color(0xFF7D7B7B), fontWeight: FontWeight.w400),
              ),
            ),
          ),
          isActive: _currentStep >= 3,
          state: _currentStep > 3 ? StepState.complete : StepState.indexed,
        ),
        //price/amount
        Step(
          title: const Text(''),
          content: Form(
            key: formKeys[4],
            child: TextFormField(
              keyboardType: TextInputType.number,
              autofocus: true,
              controller: _controller5,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some amount';
                }
                return null;
              },
              decoration: InputDecoration(
                //prefixIcon: const Icon(Icons.currency_rupee_sharp),
                prefixIconColor: Color(0xFF180662),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color(0xFFD9D9D9),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color(0xFF180662),
                  ),
                ),
                hintText: 'Price',
                hintStyle: const TextStyle(
                    color: Color(0xFF7D7B7B), fontWeight: FontWeight.w400),
              ),
            ),
          ),
          isActive: _currentStep >= 4,
          state: _currentStep > 4 ? StepState.complete : StepState.indexed,
        ),
        //Deadline
        Step(
          title: const Text(''),
          content: Form(
            key: formKeys[5],
            child: TextFormField(
              onTap: () async {
                final selectedDate = await _selectDate(context);
                if (_selectedDate != null) {
                  setState(() {
                    _controller6.text =
                        _selectedDate.toString().substring(0, 10);
                  });
                }
              },
              controller: _controller6,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a date';
                }
                return null;
              },
              decoration: InputDecoration(
                // prefixIcon: const Icon(Icons.calendar_month_outlined),
                prefixIconColor: Color(0xFF180662),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color(0xFFD9D9D9),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color(0xFF180662),
                  ),
                ),
                hintText: "eg. ${_selectedDate.toString().substring(0, 10)}",
                hintStyle: const TextStyle(
                    color: Color(0xFF7D7B7B), fontWeight: FontWeight.w400),
              ),
            ),
          ),
          isActive: _currentStep >= 5,
          state: _currentStep > 5 ? StepState.complete : StepState.indexed,
        ),
        //summary
        Step(
          title: const Text(''),
          content: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Container(
              width: double.infinity,
              height: 700,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Type ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromARGB(255, 132, 132, 132))),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Text(selectedValue == 0 ? 'Buying' : 'Selling',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color.fromARGB(255, 127, 127, 127))),
                              const Spacer(),
                              InkWell(
                                child: Icon(
                                  Icons.edit,
                                  size: 15,
                                  color: Colors.black38,
                                ),
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff7D7B7B).withOpacity(0.2),
                              //spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 1), // Set shadow offset
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Service ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromARGB(255, 132, 132, 132))),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 12),
                          child: Text(_controller2.text,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 127, 127, 127))),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff7D7B7B).withOpacity(0.2),
                              //spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 1), // Set shadow offset
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Project Name ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromARGB(255, 132, 132, 132))),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 12),
                          child: Text(_controller3.text,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 127, 127, 127))),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff7D7B7B).withOpacity(0.2),
                              //spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 1), // Set shadow offset
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Discription ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromARGB(255, 132, 132, 132))),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        width: double.infinity,
                        height: 100,
                        child: Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, top: 12),
                            child: Text(
                              _controller4.text,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 127, 127, 127)),
                              overflow: TextOverflow
                                  .visible, // Use ellipsis to indicate overflow
                              // maxLines: 1, // Set the maximum number of lines
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff7D7B7B).withOpacity(0.2),
                              //spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 1), // Set shadow offset
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Amount ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromARGB(255, 132, 132, 132))),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 12),
                          child: Text(_controller5.text,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 127, 127, 127))),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff7D7B7B).withOpacity(0.2),
                              //spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 1), // Set shadow offset
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Deadline ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromARGB(255, 132, 132, 132))),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 12),
                          child: Text(_selectedDate.toString().substring(0, 10),
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 127, 127, 127))),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff7D7B7B).withOpacity(0.2),
                              //spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 1), // Set shadow offset
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          isActive: _currentStep >= 6,
          state: _currentStep == 6 ? StepState.editing : StepState.indexed,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF8F8F8),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_rounded),
        ),
        title: const Text(
          'Contract Creation',
          style: TextStyle(
            color: Color(0xff180662),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: Stepper(
        type: StepperType.horizontal,
        currentStep: _currentStep,
        onStepTapped: (int step) {
          setState(() {
            _currentStep = step;
          });
        },
        onStepContinue: _onStepContinue,
        onStepCancel: _onStepCancel,
        steps: stepList(),
        controlsBuilder: (BuildContext context, ControlsDetails controls) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (_currentStep > 0 && _currentStep < 6)
                  Expanded(
                    // ignore: sized_box_for_whitespace
                    child: Container(
                      height: (screenHeight * 0.07),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF180662),
                        ),
                        onPressed: controls.onStepCancel,
                        child: const Text(
                          'Back',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                const SizedBox(
                  width: 10,
                ),
                _currentStep < 6
                    ? Expanded(
                        // ignore: sized_box_for_whitespace
                        child: Container(
                          height: (screenHeight * 0.07),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF180662),
                            ),
                            child: const Text(
                              'Next',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            onPressed: () {
                              _onStepContinue();
                            },
                          ),
                        ),
                      )
                    : Expanded(
                        // ignore: sized_box_for_whitespace
                        child: Container(
                          height: (screenHeight * 0.07),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF180662),
                            ),
                            child: const Text(
                              'Submit',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            onPressed: () {
                              _onStepContinue();
                            },
                          ),
                        ),
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
