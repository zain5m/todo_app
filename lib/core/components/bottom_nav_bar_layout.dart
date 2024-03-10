import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_tesk/app/ui/bloc/app_bloc.dart';
import 'package:todo_tesk/app/ui/bloc/app_state.dart';
import 'package:todo_tesk/core/config/localization/locale_keys.g.dart';
import 'package:todo_tesk/core/config/routing/routing.dart';

class BottomNavBarLayout extends StatelessWidget {
  const BottomNavBarLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 15.h,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      body: child,
      floatingActionButton: FloatingActionButton(
        onPressed: () => AddTaskRoute().go(context),
        tooltip: LocaleKeys.addTask.tr(),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.currentIndex,
            onTap: (index) =>
                AppBloc.get(context).add(ChangeBottomNavEvent(index, context)),
            items: const [
              BottomNavigationBarItem(
                label: 'All',
                icon: Icon(Icons.library_books_outlined),
              ),
              BottomNavigationBarItem(
                label: 'New',
                icon: Icon(Icons.offline_bolt_outlined),
              ),
              BottomNavigationBarItem(
                label: "Done",
                icon: Icon(
                  Icons.check_circle_outlined,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
