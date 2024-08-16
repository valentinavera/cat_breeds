import 'package:cat_breeds/src/models/cat.dart';
import 'package:cat_breeds/src/repositories/query_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';


abstract class QueryState extends Equatable {
  const QueryState();

  @override
  List<Object> get props => [];
}

class InitialQuery extends QueryState {}

class LoadingQuery extends QueryState {}

class CatListLoaded extends QueryState {
  final List<Cat> catList;

  const CatListLoaded(this.catList);

  @override
  List<Object> get props => [catList];
}

class CatListLoading extends QueryState {
  final List<Cat> oldcatList;
  final bool isFirstFetch;

  const CatListLoading(this.oldcatList, {this.isFirstFetch = false});
}

class ErrorQuery extends QueryState {
  final String message;

  const ErrorQuery(this.message);
}

//___________________ CUBIT ____________________________//

class QueryCubit extends Cubit<QueryState> {
  QueryCubit(this._queryRepository) : super(InitialQuery());

  final QueryRepository _queryRepository; 

  int currentPage = 0; 
  final int limitQuery = 6;

  Future<void> getListCats() async{
    if(state is CatListLoading) return;
    final currentState = state;
    var oldList = <Cat>[];
    if(currentState is CatListLoaded){
      oldList = currentState.catList;
    }
    emit(CatListLoading(oldList, isFirstFetch: currentPage == 0));

    try{
      final listCats = await _queryRepository.getCatBreeds(
        page: currentPage,
        size: limitQuery,
      );
      currentPage++;

      final currentList = (state as CatListLoading).oldcatList;
      final newList = [...currentList, ...listCats];
      emit(CatListLoaded(newList));

    }catch(error){
      emit(ErrorQuery('Error al cargar la lista de gatos: $error'));
    }
  }
}

