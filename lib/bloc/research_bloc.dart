import 'package:bloc/bloc.dart';
import 'package:yuka/bloc/research_event.dart';
import 'package:yuka/bloc/research_state.dart';
import 'package:yuka/model/product.dart';
import 'package:yuka/network/produit_service.dart';

class ResearchBloc extends Bloc<ResearchEvent, ResearchState> {
  ResearchBloc(String name) : super(ResearchInitial()) {
    createProductsList(name);
  }

  void createProductsList(String name) {
    add(CreateResearchEvent(name));
  }

  @override
  Stream<ResearchState> mapEventToState(ResearchEvent event) async* {
    if (event is CreateResearchEvent) {
      List<APIProduct>? products = await Network().research(event.name);

      if (products == null) {
        // TODO VIDE
      } else {
        // TODO DOnnées
        yield ResearchCurrent(products);
      }
    }
  }
}
