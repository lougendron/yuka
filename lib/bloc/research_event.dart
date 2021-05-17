import 'package:flutter/cupertino.dart';

@immutable
abstract class ResearchEvent {
  const ResearchEvent();
}

@immutable
class CreateResearchEvent extends ResearchEvent {
  final String name;
  const CreateResearchEvent(this.name);
}
