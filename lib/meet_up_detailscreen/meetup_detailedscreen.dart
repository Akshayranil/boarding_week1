import 'package:boarding1_machinetask/meet_up_detailscreen/meetup_icons.dart';
import 'package:boarding1_machinetask/meet_up_detailscreen/meetup_slide_images.dart';
import 'package:flutter/material.dart';
class MeetupDescriptionScreen extends StatelessWidget {
  MeetupDescriptionScreen({super.key});
  final PageController pageController = PageController();
  final ValueNotifier<int> currentIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(title: const Text("Description")),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// ---------------- IMAGE WITH DOTS ----------------
             MeetupSlideImages(),
              /// ---------------- BUTTON ROW ----------------
             MeetupIcons(),
             const SizedBox(height: 10),
                 const SizedBox(height: 8),
              /// ---------------- ICON / METADATA LINE (counts + rating) ----------------
              Row(
                children: [
                  // Bookmark count
                  const Icon(Icons.bookmark_outline, size: 18, color: Colors.blue),
                  const SizedBox(width: 6),
                  const Text("1034"),
                  const SizedBox(width: 16),
      
                  // Like count
                  const Icon(Icons.favorite_outline, size: 18, color: Colors.blue),
                  const SizedBox(width: 6),
                  const Text("1034"),
                  const SizedBox(width: 16),
      
                  // Rating stars (simple) + score
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star, size: 16, color: Colors.amber.shade700),
                        Icon(Icons.star, size: 16, color: Colors.amber.shade700),
                        Icon(Icons.star, size: 16, color: Colors.amber.shade700),
                        Icon(Icons.star_half, size: 16, color: Colors.amber.shade700),
                        Icon(Icons.star_border, size: 16, color: Colors.amber.shade700),
                        const SizedBox(width: 6),
                        const Text("3.2"),
                      ],
                    ),
                  ),
                ],
              ),
      
              const SizedBox(height: 12),
              /// ---------------- DETAILS ----------------
              const Text(
                "Actor Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text("Indian Actress"),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.watch_later_outlined, size: 20),
                  SizedBox(width: 6),
                  Text("Duration 20 Mins"),
                ],
              ),
              const SizedBox(height: 8), 
               const Row(
                children: [
                  Icon(Icons.currency_rupee_outlined, size: 20),
                  SizedBox(width: 6),
                  Text("Total Average Fees ₹9,999"),
                ],
              ),
              const SizedBox(height: 18),
              const Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 8),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel dui vel lorem dignissim tincidunt. In hac habitasse platea dictumst. Nulla facilisi. Integer sodales turpis id sapien hendrerit, vel varius odio sollicitudin. Sed vitae tortor id magna viverra pulvinar at the beach shore restaurent of India.",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                  child: const Text("See More"),
                  onPressed: () {},
                ),
                ],
              ),
              Divider()
            ],
          ),
        ),
        bottomNavigationBar:Container(
          child: TabBar(tabs: [
            Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.dashboard), text: "Projects"),
                Tab(icon: Icon(Icons.handshake), text: "MeetUps"),
                Tab(icon: Icon(Icons.search), text: "Explore"),
                Tab(icon: Icon(Icons.person), text: "Account"),
          ],labelColor: Colors.lightBlueAccent,),
        ) ,
      ),
    );
  }
}
