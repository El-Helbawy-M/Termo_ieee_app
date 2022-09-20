import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/home/widgets/worker/worker_card.dart';

class WorkerList extends StatelessWidget {
  const WorkerList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        10,
        (index) => const WorkerCard(),
      ),
    );
  }
}