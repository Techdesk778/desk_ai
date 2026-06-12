import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Panel'),
        backgroundColor: Colors.orange[100],
      ),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: 0,
            onDestinationSelected: (int index) {},
            labelType: NavigationRailLabelType.all,
            destinations: const [
              NavigationRailDestination(icon: Icon(Icons.work), label: Text('Jobs')),
              NavigationRailDestination(icon: Icon(Icons.people), label: Text('Applicants')),
              NavigationRailDestination(icon: Icon(Icons.school), label: Text('Training')),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Manage Recruitment', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  Expanded(
                    child: DataTable(
                      columns: const [
                        DataColumn(label: Text('Applicant')),
                        DataColumn(label: Text('Job')),
                        DataColumn(label: Text('Training Progress')),
                        DataColumn(label: Text('Action')),
                      ],
                      rows: [
                        DataRow(cells: [
                          const DataCell(Text('John Doe')),
                          const DataCell(Text('Flutter Dev')),
                          const DataCell(LinearProgressIndicator(value: 0.6)),
                          DataCell(ElevatedButton(onPressed: () {}, child: const Text('Hire'))),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}