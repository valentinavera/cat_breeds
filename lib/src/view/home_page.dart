import 'package:cat_breeds/src/cubit/query_cubit.dart';
import 'package:cat_breeds/src/models/cat.dart';
import 'package:cat_breeds/src/repositories/query_repository.dart';
import 'package:cat_breeds/src/utils/snacks.dart';
import 'package:cat_breeds/src/view/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _requestCubit = QueryCubit(QueryRepository());
  final TextEditingController _searchController = TextEditingController();
  final _scrollController = ScrollController();
  List<Cat> _filteredCats = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterCats);
    _scrollController.addListener(_onScroll);
    _requestCubit.getListCats();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    _requestCubit.close();
    super.dispose();
  }

  void _filterCats() {
    final query = _searchController.text.toLowerCase();
    if (_requestCubit.state is CatListLoaded) {
      final filteredCats =
          (_requestCubit.state as CatListLoaded).catList.where((cat) {
        return cat.breeds
            .any((breed) => breed.name.toLowerCase().contains(query));
      }).toList();

      WidgetsBinding.instance.addPostFrameCallback((_) {
        setState(() {
          _filteredCats = filteredCats;
        });
      });
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        setState(() {
          _filteredCats = [];
        });
      });
    }
  }

  void _onScroll() async {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll == currentScroll) {
      await _requestCubit.getListCats();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(
            child: Text(
          "Catbreeds",
          style: TextStyle(fontWeight: FontWeight.w700),
        )),
      ),
      body: BlocConsumer<QueryCubit, QueryState>(
        bloc: _requestCubit,
        listener: (BuildContext context, QueryState state) {
          if (state is ErrorQuery) {
            showCustomSnackBar(
              message: state.message,
              context: context,
            );
          }
          if (state is CatListLoading) {
            _filteredCats = state.oldcatList;
            isLoading = true;
          } else if (state is CatListLoaded) {
            _filteredCats = state.catList;
            _filterCats();
            isLoading = false;
          }
        },
        builder: (context, state) {
          if (state is LoadingQuery) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: CircularProgressIndicator()),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                        labelText: 'Buscar por nombre de raza',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.search)),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    controller: _scrollController,
                    padding: const EdgeInsets.all(10),
                    itemCount: _filteredCats.length + (isLoading ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index >= _filteredCats.length) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      final cat = _filteredCats[index];
                      return ItemCat(
                        cat: cat,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(height: 8);
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ItemCat extends StatelessWidget {
  const ItemCat({
    super.key,
    required this.cat,
  });
  final Cat cat;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return DetailsPage(catDetail: cat);
          }),
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.black26)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(cat.breeds.first.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                  const Spacer(),
                  Text(
                    "Más...",
                    style: TextStyle(color: scheme.primary, fontSize: 14, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Center(
                child: SizedBox(
                  width: 400,
                  child: Image.network(
                    cat.url,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(cat.breeds.first.origin, style: const TextStyle(fontSize: 16)),
                  const Spacer(),
                  Text('Inteligencia: ${cat.breeds.first.intelligence}', style: const TextStyle(fontSize: 16))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
