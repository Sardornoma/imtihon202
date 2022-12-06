import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Center(
                  child: Text(
                'Menu',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              )),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text('Halo, Admin'),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    color: Colors.green,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text('data'),
                            Text('data'),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(3),
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          child: Column(
                            children: [
                              Image(image: NetworkImage('https://www.etsy.com/listing/654254911/mixed-vintage-travel-posters-postcard'), fit: BoxFit.cover,),
                              Text('Persanan Baru', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Menu Admin'),
                SizedBox(
                  height: 20,
                ),
              ]),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  child: GridView.builder(
                    itemCount: 30,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) => Container(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
