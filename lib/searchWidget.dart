import 'package:flutter/material.dart';
import 'package:agaol/bottomBarWidget.dart';
import 'package:agaol/topBarWidget.dart';
class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBarWidget(title: 'DamApp',),
      bottomNavigationBar: BottomBarWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(),
              child: ExpansionTile(
                title: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Dating Preferance"),
                ),
                children: <Widget>[
                  Text('Male'),
                  Text('Female'),
                  Text('Other'),
                ],
              ),
            ),
         ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(),
              child: ExpansionTile(
                title: ListTile(
                  leading: Icon(Icons.attach_money),
                  title: Text("Bill Share"),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text("Option 1"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Option 2"),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(),
              child: ExpansionTile(
                title: ListTile(
                  leading: Icon(Icons.timelapse_sharp),
                  title: Text("Age"),
                ),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Lowest',
                          ),
                          onChanged: (value) {
                            // Handle the minimum age input value
                          },
                        ),
                        SizedBox(height: 8.0), // Add some space between text fields
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Highest',
                          ),
                          onChanged: (value) {
                            // Handle the maximum age input value
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(),
              child: ExpansionTile(
                title: ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text("Location"),
                ),
                children: <Widget>[
                ],
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.search),
            label: Text('Update filters to search...'),
          )
        ],
      ),
    );
  }
}
