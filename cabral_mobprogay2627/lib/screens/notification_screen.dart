import 'package:flutter/material.dart';
import '../widgets/notification.dart' as notif;

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      const notif.Notification(
        name: 'Test',
        post: 'Post',
        description: 'Description',
      ),
      const notif.Notification(
        name: 'Cyrus Robles',
        post: 'October 11',
        description: 'Liked your post.',
      ),
      const notif.Notification(
        name: 'Roben Juanatas',
        post: 'December 2',
        description: 'Commented on your post.',
      ),
      const notif.Notification(
        name: 'Maria Santos',
        post: 'December 6',
        description: 'Mentioned you in a comment.',
      ),
      const notif.Notification(
        name: 'Kevin Reyes',
        post: 'December 7',
        description: 'Liked your photo.',
      ),
      const notif.Notification(
        name: 'Angela Cruz',
        post: 'December 8',
        description: 'Sent you a friend request.',
      ),
      const notif.Notification(
        name: 'Joshua Garcia',
        post: 'December 9',
        description: 'Commented: Nice photo!',
      ),
      const notif.Notification(
        name: 'Sofia Ramirez',
        post: 'December 10',
        description: 'Liked your comment.',
      ),
      const notif.Notification(
        name: 'Daniel Flores',
        post: 'December 11',
        description: 'Mentioned you in a post.',
      ),
      const notif.Notification(
        name: 'Nicole Mendoza',
        post: 'December 12',
        description: 'Liked your post.',
      ),
      const notif.Notification(
        name: 'Mark Villanueva',
        post: 'December 13',
        description: 'Sent you a friend request.',
      ),
      const notif.Notification(
        name: 'Patrick Dela Cruz',
        post: 'December 14',
        description: 'Commented on your photo.',
      ),
      const notif.Notification(
        name: 'Ashley Torres',
        post: 'December 15',
        description: 'Liked your photo.',
      ),
      const notif.Notification(
        name: 'Gabriel Lim',
        post: 'December 16',
        description: 'Mentioned you in a comment.',
      ),
      const notif.Notification(
        name: 'Isabella Garcia',
        post: 'December 17',
        description: 'Reacted to your post.',
      ),
      const notif.Notification(
        name: 'Miguel Santos',
        post: 'December 18',
        description: 'Commented: Congratulations!',
      ),
      const notif.Notification(
        name: 'Andrea Reyes',
        post: 'December 19',
        description: 'Liked your comment.',
      ),
      const notif.Notification(
        name: 'Rafael Cruz',
        post: 'December 20',
        description: 'Sent you a friend request.',
      ),
      const notif.Notification(
        name: 'Camille Flores',
        post: 'December 21',
        description: 'Commented on your post.',
      ),
      const notif.Notification(
        name: 'Bea Mendoza',
        post: 'December 22',
        description: 'Liked your post.',
      ),
    ];

    return Container(
      color: Colors.white,
      child: ListView.separated(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return notifications[index];
        },
        separatorBuilder: (context, index) {
          return const Divider(height: 1);
        },
      ),
    );
  }
}