import 'package:flutter/material.dart';

import '../model/user_model.dart';

class BuildProfile extends StatefulWidget {

  final UserModel user;
  final VoidCallback onPressed;

  const BuildProfile({super.key, required this.user, required this.onPressed});

  @override
  State<BuildProfile> createState() => _BuildProfileState();
}

class _BuildProfileState extends State<BuildProfile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: _buildUser(widget.user),),
              _followButton(widget.user),
            ],
          ),
        ],
      ),
    );
  }

  _buildUser(UserModel user) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          user.name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(user.location),
      ],
    );
  }

  _followButton(UserModel user) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: AnimatedContainer(
        duration: const Duration(microseconds: 300),
        curve: Curves.easeIn,
        width: user.isFollow ? 50 : 120,
        height: 50,
        child: user.isFollow ? buildUnFollow() : buildFollow(),
      ),
    );
  }

  buildUnFollow() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.teal,
      ),
      child: const Icon(
        Icons.people,
        color: Colors.white,
      ),
    );
  }

  buildFollow() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        border: Border.all(color: Colors.teal, width: 2.5),
      ),
      child: const Center(
        child: FittedBox(
          child: Text(
            'Follow',
            style: TextStyle(
              color: Colors.teal,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

}

