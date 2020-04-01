import 'package:flutter/material.dart';

void main() => runApp(PFIChecklist());

class PFIChecklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PFI Inventory Checklist",
      home: Scaffold(
        body: Checklist(
          equipments: <GymEquipment>[
            GymEquipment(
              name: "Barbell",
              imageUrl:
                  "https://yorkbarbell.com/wp-content/uploads/2017/01/2022_110LBProCastIronSpinlockSet.jpg",
            ),
            GymEquipment(
              name: "Dumbbell",
              imageUrl:
                  "https://www.roguefitness.com/media/catalog/product/cache/1/rogue_header_2015/844x/472321edac810f9b2465a359d8cdc0b5/r/o/rogue-dumbbells-h.jpg",
            ),
            GymEquipment(
                name: "Chest Press",
                imageUrl:
                    "https://www.fitness-china.com/content/images/thumbs/0000854_chest-press.jpeg"),
          ],
        ),
      ),
    );
  }
}

class GymEquipment {
  GymEquipment({this.name, this.condition, this.imageUrl});

  final String name;
  final String condition;
  final String imageUrl;
}

typedef CheckedChangedCallback(GymEquipment equipment, bool checked);

class GymEquipmentItem extends StatelessWidget {
  GymEquipmentItem({this.equipment, this.checked, this.onChecked})
      : super(key: ObjectKey(equipment));

  final GymEquipment equipment;
  final bool checked;
  final CheckedChangedCallback onChecked;

  Icon _getIcon(BuildContext context) =>
      checked ? Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => showDialog(
        context: context,
        builder: (context) => _dialogBuilder(context, equipment),
      ),
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text(equipment.name[0]),
      ),
      title: Text(equipment.name),
      trailing: IconButton(
          icon: _getIcon(context),
          onPressed: () {
            onChecked(equipment, checked);
          }),
    );
  }

  _dialogBuilder(BuildContext context, GymEquipment equipment) {
    return SimpleDialog(
      children: <Widget>[
        // ? Why does image only shows up for the beginning?
        Image.network(
          equipment.imageUrl,
          fit: BoxFit.fill,
        )
      ],
    );
  }
}

class Checklist extends StatefulWidget {
  Checklist({Key key, this.equipments}) : super(key: key);
  final List<GymEquipment> equipments;

  @override
  _ChecklistState createState() => _ChecklistState();
}

class _ChecklistState extends State<Checklist> {
  Set<GymEquipment> _checkedEquipments = Set<GymEquipment>();

  void _handleChecked(GymEquipment equipment, bool checked) {
    setState(() {
      checked
          ? _checkedEquipments.remove(equipment)
          : _checkedEquipments.add(equipment);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO Add Drawer Functionality
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              child: DrawerHeader(
                child: Text(
                  "Todot",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("PFI Inventory Checklist"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            // TODO Add search functionality
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GymEquipmentAdd()));
            },
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: widget.equipments.map((GymEquipment equipment) {
          return GymEquipmentItem(
            equipment: equipment,
            checked: _checkedEquipments.contains(equipment),
            onChecked: _handleChecked,
          );
        }).toList(),
      ),
    );
  }
}

class GymEquipmentAdd extends StatelessWidget {
  @override
  // TODO Make the add gym equipment page
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a gym Equipment"),
      ),
      body: Center(
        child: Text("New Page"),
      ),
    );
  }
}
