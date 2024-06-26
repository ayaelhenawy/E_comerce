// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/src/dashbord/favorite/cubit/favorite_cubit.dart';
import 'package:my_project/src/dashbord/favorite/view/component/favorite_item.dart';
import 'package:my_project/src/dashbord/modules/product/cubit/product_cubit.dart';

class favoritePage extends StatelessWidget {
  const favoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => favoriteCubit(),
      child: BlocBuilder<favoriteCubit, favoriteState>(
        builder: (context, state) {
          final favoriteCubit controller = context.read<favoriteCubit>();
          return Scaffold(
            body: state is ProductStateLoaded
                ? const CircularProgressIndicator()
                : state is ProductStateEmpty
                    ? const Icon(CupertinoIcons.delete)
                    : ListView.builder(
                        itemBuilder: (_, int index) => FavoriteItem(
                          productModel: controller.products[index],
                          controller: controller,
                        ),
                        itemCount: controller.products.length,
                      ),
          );
        },
      ),
    );
  }
}
