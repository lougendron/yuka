import 'package:bloc/bloc.dart';
import 'package:yuka/bloc/research_event.dart';
import 'package:yuka/bloc/research_state.dart';
import 'package:yuka/model/product.dart';
import 'package:yuka/network/produit_service.dart';

class ResearchBloc extends Bloc<ResearchEvent, ResearchState> {
  Future<List<APIProduct>> products =
      <APIProduct>[] as Future<List<APIProduct>>;

  ResearchBloc(String name) : super(ResearchInitial()) {
    createProductsList(name);
  }

  void createProductsList(String name) {
    add(const CreateResearchEvent(''));
  }

  @override
  Stream<ResearchState> mapEventToState(ResearchEvent event) async* {
    if (event is CreateResearchEvent) {
      products = Network().research(event.name);
      yield ResearchCurrent(products);
    }
  }
}
