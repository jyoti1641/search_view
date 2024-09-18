import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_view/trail.dart';
import 'package:search_view/widget/formpage.dart';
import 'package:search_view/widget/radiobuttonwidget.dart';
import 'package:search_view/widget/serviceselection.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyFormPage extends StatefulWidget {
  final String selectedService;

  MyFormPage({required this.selectedService});

  @override
  _MyFormPageState createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _pageController = PageController();
  int _currentPage = 0;
  List<String> _answers = [];
  List<TextEditingController> _controllers = [];
  String _selectedService = '';
  List<Formpage> formlist = [];
  List<Formpage> getFormListForService(String service) {
    // Return the form list based on the selected service
    if (service == 'App Development') {
      return [
        Formpage(
            Label: 'What work do you want in your app',
            hintText: 'frontend/backend/fullstack',
            keyboardType: TextInputType.none,
            options: ['Front-end', 'Back-end', 'Full-Stack']),
        Formpage(
            Label: 'Write the number of screens in your website',
            hintText: 'Enter number of pages',
            keyboardType: TextInputType.number),
        Formpage(
            Label: 'What is the type of your app?',
            hintText: 'Static/dynamic',
            keyboardType: TextInputType.none,
            options: ['Static', 'Dynamic', 'none']),
        Formpage(
            Label: 'What is the theme of your app?',
            hintText: 'Ecommerce/medical'),
      ];
    } else if (service == 'Web Development') {
      return [
        Formpage(
            Label: 'What work do you want in your website',
            hintText: 'frontend/backend/fullstack',
            keyboardType: TextInputType.none,
            options: ['Front-end', 'Back-end', 'Full-Stack']),
        Formpage(
            Label: 'Write the number of pages in your website',
            hintText: 'Enter number of pages',
            keyboardType: TextInputType.number),
        Formpage(
            Label: 'What is the type of your website?',
            hintText: 'Static/dynamic',
            keyboardType: TextInputType.none,
            options: ['Static', 'Dynamic', 'none']),
        Formpage(
            Label: 'What is the theme of your website?',
            hintText: 'Ecommerce/medical'),
      ];
    } else if (service == 'Logo Designing') {
      return [
        Formpage(
            Label: 'What work do you want in your logo',
            hintText: 'frontend/backend/fullstack',
            keyboardType: TextInputType.none,
            options: [
              'free-hand design',
              'illustration',
            ]),
        Formpage(
            Label: 'What is the type of file do you want?',
            hintText: 'Static/dynamic',
            keyboardType: TextInputType.none,
            options: ['png', 'jpg', 'svg', 'all']),
        Formpage(
            Label: 'What is the theme of your logo?',
            hintText: 'write color theme'),
      ];
    } else {
      return [];
    }
  }

  @override
  void initState() {
    super.initState();

    _selectedService = widget.selectedService;
    formlist = getFormListForService(_selectedService);
    _answers = List.filled(formlist.length, '');
    _controllers = List.generate(
      formlist.length,
      (index) => TextEditingController(text: _answers[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_rounded),
        ),
        title: const Text('Contract Creation'),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            bottom: screenHeight * 0.02),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: formlist.length + 3,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  final _focusNode = FocusNode();
                  // var formlist = getFormListForService(widget.selectedService);
                  if (index == 0) {
                    // Service selection page
                    return ServiceSelectionPage(
                      services: [
                        'App Development',
                        'Web Development',
                        'Logo Designing'
                      ],
                      selectedService: _selectedService,
                      onChanged: (value) {
                        setState(() {
                          _selectedService = value!;
                          formlist = getFormListForService(_selectedService);
                          print('Selected service: $_selectedService');
                          print('Formlist: $formlist');
                        });
                      },
                      // formlist: formlist,
                      currentPage: _currentPage + 1,
                    );
                  } else if (index == formlist.length + 2) {
                    // Last page
                    return LastPage(
                      selectedService: _selectedService,
                      formlist: formlist,
                      controllers: _controllers,
                    );
                  } else {
                    // Form pages
                    return Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Page ${index + 1} / ${formlist.length + 1}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.03,
                          ),
                          Text(
                            formlist[index].Label,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.015,
                          ),
                          if (formlist[index].keyboardType ==
                              TextInputType.text)
                            TextField(
                              controller: _controllers[index - 1],
                              autofocus: true,
                              focusNode: _focusNode,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                hintText: formlist[index].hintText,
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (value) {
                                _answers[index - 1] = value;
                                _saveContractsList();
                              },
                            )
                          else if (formlist[index].keyboardType ==
                              TextInputType.number)
                            TextField(
                              controller: _controllers[index - 1],
                              autofocus: true,
                              focusNode: _focusNode,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: formlist[index].hintText,
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (value) {
                                _answers[index - 1] = value;
                                _saveContractsList();
                              },
                            )
                          else
                            StatefulBuilder(
                              builder: (context, setState) {
                                return RadioButtonWidget(
                                  options: formlist[index]
                                      .options, // List of radio button options
                                  answer: _answers[index - 1],
                                  onChanged: (value) {
                                    setState(() {
                                      _answers[index - 1] = value;
                                    });
                                    _saveContractsList();
                                  },
                                );
                              },
                            ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (_currentPage > 0)
                  ElevatedButton(
                    onPressed: () {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: Text('Back'),
                  ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    print('Current page: $_currentPage');
                    print('Formlist length: ${formlist.length}');
                    print('Formlist is empty: ${formlist.isEmpty}');
                    if (_currentPage < formlist.length && formlist.isNotEmpty) {
                      setState(() {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      });
                    }
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveContractsList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('allContracts', _answers);
  }
}

// class LastPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//     return FutureBuilder<List<String>>(
//       future: _getContractsList(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return CircularProgressIndicator();
//         } else if (snapshot.hasError) {
//           return Text('Error: ${snapshot.error}');
//         } else if (snapshot.hasData) {
//           return ListView.builder(
//             itemCount: snapshot.data!.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(formlist[index].Label),
//                 subtitle: Text(snapshot.data![index]),
//               );
//             },
//           );
//         } else {
//           return Text('No data found');
//         }
//       },
//     );
//   }

//   Future<List<String>> _getContractsList() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getStringList('allContracts') ?? [];
//   }
// }
class LastPage extends StatelessWidget {
  final String selectedService;
  final List<Formpage> formlist;
  final List<TextEditingController> controllers;

  LastPage({
    required this.selectedService,
    required this.formlist,
    required this.controllers,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return FutureBuilder<List<String>>(
      future: _getContractsList(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          return ListView.builder(
            itemCount:
                snapshot.data!.length + 1, // Add 1 to include the service name
            itemBuilder: (context, index) {
              if (index == 0) {
                // Service name
                return ListTile(
                  title: Text('Selected Service:'),
                  subtitle: Text(selectedService),
                );
              } else if (index < formlist.length) {
                // Form answers
                return ListTile(
                  title: Text(formlist[index].Label),
                  subtitle: Text(controllers[index].text),
                );
              } else {
                // Return an empty container if the index is out of range
                return Container();
              }
            },
          );
        } else {
          return Text('No data found');
        }
      },
    );
  }

  Future<List<String>> _getContractsList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('allContracts') ?? [];
  }
}
