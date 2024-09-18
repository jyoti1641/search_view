import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:search_view/trail.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  int _currentPage = 0;
  var _pageController = PageController();
  String? _selectedService;
  Map<String, dynamic> _answers = {};

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _selectedService = null;
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
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          ServiceSelectionPage(
            selectedService: _selectedService,
            onServiceSelected: (service) {
              setState(() {
                _selectedService = service;
              });
              // _pageController.nextPage(
              //   duration: Duration(milliseconds: 500),
              //   curve: Curves.ease,
              // );
            },
          ),
          // Dynamic pages based on the selected service
          ..._generateDynamicPages(),
          SummaryPage(answers: _answers),
        ],
        onPageChanged: (page) {
          setState(() {
            _currentPage = page;
          });
        },
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (_currentPage > 0)
            TextButton(
              onPressed: () {
                _pageController.previousPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
              child: Text('Back'),
            ),
          if (_currentPage < _generatePages().length - 1)
            TextButton(
              onPressed: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
              child: Text('Next'),
            ),
          if (_currentPage == _generatePages().length - 1)
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Trail()),
                );
              },
              child: Text('Submit'),
            ),
        ],
      ),
    );
  }

  List<Widget> _generatePages() {
    return [
      ServiceSelectionPage(
        selectedService: _selectedService,
        onServiceSelected: (service) {
          if (service != null) {
            setState(() {
              _selectedService = service;
            });
            // _pageController.jumpToPage(1); // Jump to the first dynamic page
            // _pageController.nextPage(
            //   duration: Duration(milliseconds: 500),
            //   curve: Curves.ease,
            // );
          }
        },
      ),
      // Dynamic pages based on the selected service
      ..._generateDynamicPages(),
      SummaryPage(answers: _answers),
    ];
  }

  List<Widget> _generateDynamicPages() {
    switch (_selectedService) {
      case 'Web development':
        return [
          DynamicPage(
            question: 'What work do you want in your Website',
            onAnswer: (answer) {
              setState(() {
                _answers['What work do you want in your Website'] = answer;
              });
            },
            keyboardType: TextInputType.none,
            options: ['Front-end', 'Back-end', 'Full-Stack'],
          ),
          DynamicPage(
            question: 'What type of website do you want?',
            onAnswer: (answer) {
              setState(() {
                _answers['What type of website do you want?'] = answer;
              });
            },
            keyboardType: TextInputType.none,
            options: ['Static', 'Dynamic'],
          ),
          DynamicPage(
            question: 'Write the number of pages in your website',
            onAnswer: (answer) {
              setState(() {
                _answers['Write the number of pages in your website'] = answer;
              });
            },
            keyboardType: TextInputType.number,
          ),
          DynamicPage(
            question: 'What are the features of website?',
            onAnswer: (answer) {
              setState(() {
                _answers['What are the features of website?'] = answer;
              });
            },
          ),
          DynamicPage(
            question: 'Which technology do you want to use?',
            hintText: 'example: Bootstrap,Reactjs',
            onAnswer: (answer) {
              setState(() {
                _answers['Which technology do you want to use?'] = answer;
              });
            },
          ),
          DynamicPage(
            question: 'Which database do you want to use?',
            hintText: 'example: Mongodb',
            onAnswer: (answer) {
              setState(() {
                _answers['Which database do you want to use?'] = answer;
              });
            },
          ),
        ];
      case 'Application development':
        return [
          DynamicPage(
            question: 'What work do you want in your App',
            onAnswer: (answer) {
              setState(() {
                _answers['What work do you want in your App'] = answer;
              });
            },
            keyboardType: TextInputType.none,
            options: ['Front-end', 'Back-end', 'Full-Stack'],
          ),
          DynamicPage(
            question: 'For which platform do you want you app?',
            onAnswer: (answer) {
              setState(() {
                _answers['For which platform do you want you app?'] = answer;
              });
            },
            keyboardType: TextInputType.none,
            options: ['IOS', 'Android', 'Cross platform'],
          ),
          DynamicPage(
            question: 'Which technology do you want to use?',
            onAnswer: (answer) {
              setState(() {
                _answers['Which technology do you want to use?'] = answer;
              });
            },
            keyboardType: TextInputType.none,
            options: ['Flutter', 'ReactJS', 'Java', 'Kotlin'],
          ),
          DynamicPage(
            question: 'Write the number of screens in your website',
            onAnswer: (answer) {
              setState(() {
                _answers['Write the number of screens in your website'] =
                    answer;
              });
            },
            keyboardType: TextInputType.number,
          ),
          DynamicPage(
            question: 'Which database do you want to use?',
            hintText: 'example: Mongodb',
            onAnswer: (answer) {
              setState(() {
                _answers['Which database do you want to use?'] = answer;
              });
            },
          ),
          DynamicPage(
            question: 'Do you want to make your app live?',
            onAnswer: (answer) {
              setState(() {
                _answers['Do you want to make your app live?'] = answer;
              });
            },
            keyboardType: TextInputType.none,
            options: ['Yes', 'No'],
          ),
        ];
      case 'Logo Designing':
        return [
          DynamicPage(
            question: 'write your theme color for logo',
            hintText: 'example: red and black',
            onAnswer: (answer) {
              setState(() {
                _answers['write your theme color for logo'] = answer;
              });
            },
          ),
          DynamicPage(
            question: 'Element which should be included in logo',
            hintText: 'example: car',
            onAnswer: (answer) {
              setState(() {
                _answers['Element which should be included in logo'] = answer;
              });
            },
          ),
          DynamicPage(
            question: 'Which type of file do you want?',
            onAnswer: (answer) {
              setState(() {
                _answers['Which type of file do you want?'] = answer;
              });
            },
            keyboardType: TextInputType.none,
            options: ['png', 'jpg', 'svg', 'all'],
          ),
        ];
      case 'Other':
        return [
          DynamicPage(
            question: 'Enter your service name',
            onAnswer: (answer) {
              setState(() {
                _answers['Enter your service name'] = answer;
              });
            },
          ),
          DynamicPage(
            question: 'Enter your project description',
            onAnswer: (answer) {
              setState(() {
                _answers['Enter your service name'] = answer;
              });
            },
          ),
          DynamicPage(
            question: 'Enter your project budget',
            onAnswer: (answer) {
              setState(() {
                _answers['Enter your service name'] = answer;
              });
            },
            keyboardType: TextInputType.number,
          ),
        ];
      default:
        return [];
    }
  }
}

class ServiceSelectionPage extends StatelessWidget {
  final String? selectedService;
  final Function(String?) onServiceSelected;

  ServiceSelectionPage(
      {required this.selectedService, required this.onServiceSelected});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        value: selectedService,
        items: <String>[
          'Web development',
          'Application development',
          'Logo Designing',
          'other'
        ]
            .map((String value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ))
            .toList(),
        onChanged: (String? newValue) {
          if (newValue != null) {
            onServiceSelected(newValue);
          }
        },
        hint: Text('Select a service'),
      ),
    );
  }
}

// class DynamicPage extends StatefulWidget {
//   final String question;
//   final Function(dynamic) onAnswer;
//   final TextInputType keyboardType;
//   final String hintText;
//   final List<String>? options;

//   DynamicPage({
//     required this.question,
//     required this.onAnswer,
//     this.keyboardType = TextInputType.text,
//     this.hintText = '',
//     this.options,
//   });

//   @override
//   State<DynamicPage> createState() => _DynamicPageState();
// }

// class _DynamicPageState extends State<DynamicPage> {
//   dynamic _selectedOption;

//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(widget.question),
//           SizedBox(
//             height: screenHeight * 0.01,
//           ),
//           if (widget.options == null)
//             TextField(
//               // onChanged: widget.onAnswer,
//               onChanged: (answer) {
//                 widget.onAnswer(answer);
//               },
//               keyboardType: widget.keyboardType,
//               decoration: InputDecoration(
//                 hintText: widget.hintText,
//               ),
//             )
//           else
//             Column(
//               children: widget.options!.map((option) {
//                 return RadioListTile<String>(
//                   title: Text(option),
//                   value: option,
//                   groupValue: _selectedOption,
//                   onChanged: (value) {
//                     setState(() {
//                       _selectedOption = value;
//                     });
//                     widget.onAnswer(value);
//                   },
//                 );
//               }).toList(),
//             ),
//         ],
//       ),
//     );
//   }
// }
class DynamicPage extends StatefulWidget {
  final String question;
  final Function(dynamic) onAnswer;
  final TextInputType keyboardType;
  final String hintText;
  final List<String>? options;

  DynamicPage({
    required this.question,
    required this.onAnswer,
    this.keyboardType = TextInputType.text,
    this.hintText = '',
    this.options,
  });

  @override
  State<DynamicPage> createState() => _DynamicPageState();
}

class _DynamicPageState extends State<DynamicPage> {
  dynamic _selectedOption;
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.question),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          if (widget.options == null)
            TextField(
              controller: _textController,
              onChanged: (answer) {
                widget.onAnswer(answer);
              },
              keyboardType: widget.keyboardType,
              decoration: InputDecoration(
                hintText: widget.hintText,
              ),
            )
          else
            Column(
              children: widget.options!.map((option) {
                return RadioListTile<String>(
                  title: Text(option),
                  value: option,
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value;
                    });
                    widget.onAnswer(value);
                  },
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}

class SummaryPage extends StatelessWidget {
  final Map<String, dynamic> answers;

  SummaryPage({required this.answers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: answers.length,
        itemBuilder: (context, index) {
          final question = answers.keys.elementAt(index);
          final answer = answers[question];
          return ListTile(
            title: Text(question),
            subtitle: Text(answer),
          );
        },
      ),
    );
  }
}
