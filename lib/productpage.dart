import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: 
         Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions:  [
        Icon(Icons.favorite, color: Colors.red),
        SizedBox(width: 16),
        Icon(Icons.share),
        SizedBox(width: 16),
      ],
      ),
    body:
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                'data:image/jpeg;base64,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',
                height: 150,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Xbox Series X',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange),
                      SizedBox(width: 4),
                      Text('4.8'),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.thumb_up, color: Colors.green),
                      SizedBox(width: 4),
                      Text('94%'),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Text('117 reviews'),
              ],
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'On sale',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'The Microsoft Xbox Series X gaming console is capable of impressing with minimal boot times and mesmerizing visual effects when playing games at up to 120 frames per second',
            ),
            SizedBox(height: 16),
            Row(
              children: [
                ChoiceChip(
                  label: Text('1 TB'),
                  selected: true,
                  selectedColor: Colors.green,
                  onSelected: (bool selected) {},
                ),
                SizedBox(width: 8),
                ChoiceChip(
                  label: Text('825 GB'),
                  selected: false,
                  onSelected: (bool selected) {},
                ),
                SizedBox(width: 8),
                ChoiceChip(
                  label: Text('512 GB'),
                  selected: false,
                  onSelected: (bool selected) {},
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              '\$650.00',
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.lineThrough,
                color: const Color.fromARGB(255, 239, 235, 235),
              ),
            ),
            Text(
              '\$570.00',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // background color
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 16),
                ),
                onPressed: () {},
                child: Text('Add to Cart'),
                
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
