
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PendingOrdersPage extends StatefulWidget {
  const PendingOrdersPage({Key? key}) : super(key: key);

  @override
  _PendingOrdersPageState createState() => _PendingOrdersPageState();
}

class _PendingOrdersPageState extends State<PendingOrdersPage> {
  CollectionReference _ordersRef =
  FirebaseFirestore.instance.collection('pending_orders');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pending Orders'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _ordersRef.snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          List<Widget> orderWidgets = [];
          snapshot.data!.docs.forEach((DocumentSnapshot document) {
            Map<String, dynamic> data =
            document.data() as Map<String, dynamic>;

            orderWidgets.add(Card(
              child: ListTile(
                title: Text(),
                trailing: IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    _ordersRef.doc(document.id).delete();
                  },
                ),
              ),
            ));
          });

          if (orderWidgets.isEmpty) {
            return Center(
              child: Text('You have no pending orders.'),
            );
          }

          return ListView(
            children: orderWidgets,
          );
        },
      ),
    );
  }
}