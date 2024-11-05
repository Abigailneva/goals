import 'package:flutter/material.dart';

class home extends StatelessWidget {
  final List<Map<String, String>> orderStatusList = [
    {'orderID': '001', 'status': 'Sedang diproses'},
    {'orderID': '002', 'status': 'Selesai'},
    {'orderID': '003', 'status': 'Sedang diproses'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding around the content
        child: ListView.builder(
          itemCount: orderStatusList.length,
          itemBuilder: (context, index) {
            final order = orderStatusList[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text('Order ID: ${order['orderID']}'),
                subtitle: Text('Status: ${order['status']}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
//masih bellom di apa apain jadi masih copy paste