import 'package:flutter/material.dart';
import 'package:flutter_ai/core/shared/providers.dart';
import 'package:flutter_ai/core/presentation/components/text_widget.dart';
import 'package:flutter_ai/core/shared/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ModelDropDownWidget extends ConsumerStatefulWidget {
  const ModelDropDownWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ModelDropDownWidgetState();
}

class _ModelDropDownWidgetState extends ConsumerState<ModelDropDownWidget> {
  ValueNotifier<String> selectedModel = ValueNotifier('');
  @override
  Widget build(BuildContext context) {
    final modelsProvider = ref.watch(modelFutureProvider);
    // ignore: invalid_use_of_protected_member
    selectedModel.value = ref.watch(modelNotifier.notifier).state.currentModel;
    return modelsProvider.when(
      data: (data) {
        return data.isEmpty
            ? const SizedBox.shrink()
            : FittedBox(
                child: ValueListenableBuilder(
                    valueListenable: selectedModel,
                    builder: (context, model, _) {
                      return DropdownButton(
                        dropdownColor: scaffoldBackgroundColor,
                        iconEnabledColor: Colors.white,
                        items: List<DropdownMenuItem<String>>.generate(
                            data.length, (index) {
                          return DropdownMenuItem(
                            value: data[index].id,
                            child: TextWidget(
                              label: data[index].id,
                              fontSize: 15,
                            ),
                          );
                        }),
                        value: model,
                        onChanged: (value) {
                          // print(value);
                          ref.watch(modelNotifier.notifier).setState(
                                value.toString(),
                              ); //setstate
                          selectedModel.value = value!;
                        },
                      );
                    }),
              );
      },
      error: (error, _) {
        return Center(
          child: TextWidget(
            label: error.toString(),
          ),
        );
      },
      loading: () {
        return const SizedBox();
      },
    );
  }
}
