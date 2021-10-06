import 'package:flutter/material.dart';
import 'package:responsivetask2/widgets/textstyle.dart';

class UpgradCard extends StatelessWidget {
  const UpgradCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(18)),
        color: Colors.deepOrangeAccent.withOpacity(0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.deepOrangeAccent.withOpacity(0.6),
            child:
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThY8iG_UrR3GNxj4n8i9OMlDlBPNGvNKggrP-RmxWBvhvri_Gez4aMMfv-tpX0NpYoof0&usqp=CAU"),

          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Upgrade to Pro",
                style: TextThemes.cardtitlestyle,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Learn More",
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
