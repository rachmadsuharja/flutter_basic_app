import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/thinkpad-t460.jpg',
              fit: BoxFit.cover,
              height: 120,
              width: 100,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product Title',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Description',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(height: 1.5),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Rp. 2.850.000',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).primaryColor, letterSpacing: 1),
              )
            ],
          ))
        ],
      ),
    );
  }
}
