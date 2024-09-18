// In the ServiceSelectionPage widget
import 'package:flutter/material.dart';

// class ServiceSelectionPage extends StatelessWidget {
//   final List<String> services;
//   final String selectedService;
//   final Function(String?) onChanged;
//   final int currentPage;

//   ServiceSelectionPage({
//     required this.services,
//     required this.selectedService,
//     required this.onChanged,
//     required this.currentPage,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Page $currentPage / ${currentPage + 2}',
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 16),
//         Text(
//           'Select a service:',
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 8),
//         DropdownButton<String>(
//           value: selectedService.isNotEmpty ? selectedService : null,
//           onChanged: onChanged,
//           items: services.map((String service) {
//             return DropdownMenuItem<String>(
//               value: service,
//               child: Text(service),
//             );
//           }).toList(),
//           hint: Text('Select a service'),
//         ),
//       ],
//     );
//   }
// }
// In the ServiceSelectionPage widget
// In the ServiceSelectionPage widget
class ServiceSelectionPage extends StatefulWidget {
  final List<String> services;
  final String selectedService;
  final Function(String?) onChanged;
  final int currentPage;

  ServiceSelectionPage({
    required this.services,
    required this.selectedService,
    required this.onChanged,
    required this.currentPage,
  });

  @override
  _ServiceSelectionPageState createState() => _ServiceSelectionPageState();
}

class _ServiceSelectionPageState extends State<ServiceSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Page ${widget.currentPage} / ${widget.currentPage + 2}',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Select a service:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        DropdownButton<String>(
          value:
              widget.selectedService.isNotEmpty ? widget.selectedService : null,
          onChanged: (value) {
            widget.onChanged(value);
            // Call setState to rebuild the widget tree and update the formlist variable
            setState(() {});
          },
          items: widget.services.map((String service) {
            return DropdownMenuItem<String>(
              value: service,
              child: Text(service),
            );
          }).toList(),
          hint: Text('Select a service'),
        ),
      ],
    );
  }
}
