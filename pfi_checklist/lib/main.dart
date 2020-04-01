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
              name: "Dumbbell",
              imageUrl:
                  "https://www.roguefitness.com/media/catalog/product/cache/1/rogue_header_2015/844x/472321edac810f9b2465a359d8cdc0b5/r/o/rogue-dumbbells-h.jpg",
            ),
            GymEquipment(
              name: "Barbell",
              imageUrl:
                  "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2FYork-Barbell-2900-International-Olympic%2Fdp%2FB003LT8KDG&psig=AOvVaw2fznf-5tJRHyKChm_FVwAw&ust=1585662218673000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNCNtJ2qwugCFQAAAAAdAAAAABAI",
            ),
            GymEquipment(
              name: "Chest Press",
              imageUrl:
                  "data:image/jpeg;base64,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",
            ),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              child: DrawerHeader(
                child: Text(
                  "PFI Checklist",
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
