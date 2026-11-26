import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Cyrus Robles',
          postContent: 'Kamusta',
          numOfLikes: 100,
          date: 'October 11',
        ),
        NewsFeedCard(
          userName: 'Roben Juanatas',
          postContent: 'Kicking off the holiday season with ICpEP-NCR!',
          numOfLikes: 200,
          hasImage: true,
          date: 'December 2',
        ),
        NewsFeedCard(
          userName: 'John Carlo Cabral',
          postContent: 'Enjoying my weekend. Finally, some time to relax!',
          numOfLikes: 56,
          hasImage: true,
          date: 'December 5',
        ),
        NewsFeedCard(
          userName: 'Maria Santos',
          postContent: 'Good morning everyone! Have a wonderful day.',
          numOfLikes: 89,
          date: 'December 6',
        ),
        NewsFeedCard(
          userName: 'Kevin Reyes',
          postContent: 'Coffee first, everything else later. ☕',
          numOfLikes: 32,
          hasImage: true,
          date: 'December 7',
        ),
        NewsFeedCard(
          userName: 'Angela Cruz',
          postContent: 'Another day, another opportunity to learn something new.',
          numOfLikes: 120,
          date: 'December 8',
        ),
        NewsFeedCard(
          userName: 'Joshua Garcia',
          postContent: 'Throwback to one of my favorite memories!',
          numOfLikes: 250,
          hasImage: true,
          date: 'December 9',
        ),
        NewsFeedCard(
          userName: 'Sofia Ramirez',
          postContent: 'Stay positive and keep going. You got this!',
          numOfLikes: 75,
          date: 'December 10',
        ),
        NewsFeedCard(
          userName: 'Daniel Flores',
          postContent: 'A beautiful day to spend with friends.',
          numOfLikes: 180,
          hasImage: true,
          date: 'December 11',
        ),
        NewsFeedCard(
          userName: 'Nicole Mendoza',
          postContent: 'Happy holidays everyone! 🎄',
          numOfLikes: 300,
          date: 'December 12',
        ),
      ],
    );
  }
}