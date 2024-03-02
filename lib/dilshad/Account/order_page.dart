import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderCard(
              orderNumber: '123456',
              date: 'May 15, 2022',
              totalAmount: '\$150.00',
              status: 'Delivered',
            ),
            SizedBox(height: 16.0),
            OrderCard(
              orderNumber: '789012',
              date: 'May 20, 2022',
              totalAmount: '\$200.50',
              status: 'Processing',
            ),
          ],
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final String orderNumber;
  final String date;
  final String totalAmount;
  final String status;

  OrderCard({
    required this.orderNumber,
    required this.date,
    required this.totalAmount,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(Icons.shopping_cart, color: Colors.white),
        ),
        title: Text('Order #$orderNumber'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.0),
            Text('Date: $date'),
            Text('Total Amount: $totalAmount'),
            SizedBox(height: 8.0),
            Text(
              'Status: $status',
              style: TextStyle(
                color: status == 'Delivered' ? Colors.green : Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        trailing: IconButton(
          icon: Icon(Icons.arrow_forward),
          onPressed: () {
            // Add functionality to view detailed order information
          },
        ),
      ),
    );
  }
}
