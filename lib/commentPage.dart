import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:task_manager/Providers/commentProvider.dart';
import 'package:task_manager/Providers/formvalueProvider.dart';
import 'package:task_manager/Providers/priorityProvider.dart';
import 'package:task_manager/Providers/statusprovider.dart';
import 'package:task_manager/task_model/task_model_usingfreezed.dart';

//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:sleek_circular_slider/sleek_circular_slider.dart';
class NewScreen extends ConsumerWidget {
  final List<Issues> newList;
  final String assigneeName;
  List<Issues> filteredList = [];
  final GlobalKey<FormBuilderState> _formkey = GlobalKey<FormBuilderState>();
  final GlobalKey<FormBuilderState> _resetformkey =
      GlobalKey<FormBuilderState>();

  NewScreen({
    Key? key,
    required this.newList,
    required this.filteredList,
    required this.assigneeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //
    final formValuess = ref.watch(formValuesProvider);
    final projectWatcher = ref.watch(projectProvider);
    final priorityWatcher = ref.watch(priorityProvider);
    List<Priority> priorityList = [...?priorityWatcher.value?.toList()];
    List<Project> projectList = [...?projectWatcher.value?.toList()];
    final componentWatcher = ref.watch(componentProvider);
    List<Components> componentsList = [...?componentWatcher.value?.toList()];
    List<String> componentName =
        componentsList.map((component) => component.name).toList();
    List<String> projectName =
        projectList.map((project) => project.key).toList();
    List<String> priorityName =
        priorityList.map((priority) => priority.name).toList();
    Map<String, dynamic> formValue = {};
    List<Issues> displayedTaskList = newList;
    if (formValuess.isNotEmpty) {
      displayedTaskList = newList.where((task) {
        //  Components? selectedComponents = formValuess['Components'];
        String? selectedComponents = formValuess['Components'];
        String? selectedProject = formValuess['Project'];
        String? selectedPriority = formValuess['Priority'];
        bool matchesProject = selectedProject == null ||
            task.fields.project.key.contains(selectedProject);
        // (task.fields.project == selectedProject);
        bool matchesComponents = selectedComponents == null ||
            task.fields.components
                .any((component) => component.name == (selectedComponents));
        //task.fields.components.contains(selectedComponents);
        bool matchesPriority = selectedPriority == null ||
            (task.fields.priority.name.contains(selectedPriority));
        return (matchesComponents && matchesProject && matchesPriority);
      }).toList();
    }

    return Scaffold(
      backgroundColor: Colors.green[100],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(assigneeName),
        actions: [
          Container(
            width: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilder(
                key: _resetformkey,
                child: IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    _formkey.currentState?.reset();
                    _formkey.currentState?.reset();
                    ref
                        .read(formValuesProvider.notifier)
                        .updateValues(formValue);
                  },
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 400,
                      color: const Color.fromARGB(31, 210, 126, 216),
                      child: FormBuilder(
                        key: _formkey,
                        child: ListView(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    //right: 6.0,
                                    bottom: 4.0,
                                    top: 4.0),
                                child: Row(
                                  children: [
                                    const Expanded(
                                      flex: 1,
                                      // width: 200,
                                      child: ListTile(
                                        title: Text(
                                          "Filter",
                                          style: TextStyle(
                                            fontSize: 17.0,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.green,
                                      ),
                                      onPressed: () {
                                        _formkey.currentState?.reset();
                                        ref
                                            .read(formValuesProvider.notifier)
                                            .updateValues(formValue);
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                height: 55,
                                child: FormBuilderDropdown<String>(
                                  name: 'Project',
                                  decoration: const InputDecoration(
                                    labelText: 'Project',
                                    border: OutlineInputBorder(),
                                    hintText: 'Select Project',
                                  ),
                                  items: projectName
                                      .map((project) => DropdownMenuItem(
                                            alignment: AlignmentDirectional
                                                .centerStart,
                                            value: project,
                                            child: Text(project.toString()),
                                          ))
                                      .toList(),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  height: 55,
                                  child: FormBuilderDropdown<String>(
                                    name: 'Components',
                                    decoration: const InputDecoration(
                                      labelText: 'Components',
                                      border: OutlineInputBorder(),
                                    ),
                                    items: componentName
                                        .map((component) => DropdownMenuItem(
                                              alignment: AlignmentDirectional
                                                  .centerStart,
                                              value: component,
                                              child: Text(component.toString()),
                                            ))
                                        .toList(),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  height: 55,
                                  child: FormBuilderDropdown<String>(
                                    name: 'Priority',
                                    decoration: const InputDecoration(
                                      labelText: 'Priority',
                                      border: OutlineInputBorder(),
                                    ),
                                    items: priorityName
                                        .map((priority) => DropdownMenuItem(
                                              alignment: AlignmentDirectional
                                                  .centerStart,
                                              value: priority,
                                              child: Text(priority.toString()),
                                            ))
                                        .toList(),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                height: 56,
                                // width: 20,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formkey.currentState!
                                        .saveAndValidate()) {
                                      formValue = _formkey.currentState!.value;
                                      ref
                                          .read(formValuesProvider.notifier)
                                          .updateValues(formValue);
                                    }
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Filter"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
            icon: const Icon(Icons.filter_list_alt),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: ListView.builder(
                      itemCount: displayedTaskList.isNotEmpty
                          ? displayedTaskList.length
                          : 1,
                      itemBuilder: (context, index) {
                        if (displayedTaskList.isEmpty &&
                            formValuess.isNotEmpty) {
                          return const Card(
                            child: ListTile(
                              title: Text(
                                'Error',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                'The selected components or project or priority is not available.Please try again.',
                              ),
                            ),
                          );
                        } else {
                          final timeSpent =
                              displayedTaskList[index].fields.timespent;
                          final components =
                              displayedTaskList[index].fields.components;
                          int timeSpentInSeconds = timeSpent;
                          int hours = timeSpentInSeconds ~/ 3600;
                          int minutes = (timeSpentInSeconds % 3600) ~/ 60;
                          int seconds = timeSpentInSeconds % 60;
                          String timeSpentOfEach =
                              '$hours h $minutes m $seconds s';
                          final createdDateString =
                              displayedTaskList[index].fields.created;
                          DateTime createdDate =
                              DateFormat("yyyy-MM-dd").parse(createdDateString);
                          //  print(createdDate);
                          String formattedDateTime =
                              DateFormat("MMMM d, y").format(createdDate);
                          String dueDateString =
                              displayedTaskList[index].fields.duedate;
                          DateTime dueDate =
                              DateFormat("yyyy-MM-dd").parse(dueDateString);
                          print(dueDate);
                          bool isChipSelected = true;
                          List<Color> progressBarColors = [];
                          if ((displayedTaskList[index]
                                      .fields
                                      .progress
                                      .percent !=
                                  100) &&
                              dueDate.isBefore(createdDate)) {
                            progressBarColors.addAll([Colors.red, Colors.red]);
                          } else {
                            double progressPercent = displayedTaskList[index]
                                .fields
                                .progress
                                .percent
                                .toDouble();
                            if (progressPercent < 30) {
                              progressBarColors.add(Colors.orange);
                            } else if (progressPercent < 60) {
                              progressBarColors.add(Colors.blue);
                            } else {
                              progressBarColors.add(Colors.green);
                            }
                            progressBarColors.addAll(
                                [Colors.orange, Colors.blue, Colors.green]);
                          }
                          return Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Card(
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              surfaceTintColor: Colors.purple,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Text(
                                            '${displayedTaskList[index].fields.summary}',
                                            style: const TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            ' (${displayedTaskList[index].fields.creator.displayName})',
                                            style: const TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0, right: 5.0),
                                            child: Text(
                                              ' ${formattedDateTime}',
                                              style: const TextStyle(
                                                  // fontSize: 18.0,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 5.0,
                                              left: 10.0,
                                            ),
                                            child: Text(
                                              '($timeSpentOfEach)',
                                              style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: components.map((component) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20.0),
                                            child: ChoiceChip(
                                              label: Text(
                                                '${component.name}',
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              selected: isChipSelected,
                                              selectedColor: Colors.green[100],
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 1.0, top: 5.0),
                                            child: Center(
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    'assets/priorityText.svg',
                                                    width: 21,
                                                  ), // Icon
                                                  Text(
                                                    ' ${displayedTaskList[index].fields.priority.name}',
                                                    style: const TextStyle(
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        fontSize: 15,
                                                        color: Colors.black),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 30.0),
                                                    child: SleekCircularSlider(
                                                      appearance:
                                                          CircularSliderAppearance(
                                                        size: 50,
                                                        customColors:
                                                            CustomSliderColors(
                                                          trackColor:
                                                              Colors.limeAccent,
                                                          progressBarColors:
                                                              progressBarColors,
                                                          gradientStartAngle: 0,
                                                          gradientEndAngle: 360,
                                                          shadowMaxOpacity:
                                                              20.0,
                                                        ),
                                                      ),
                                                      initialValue:
                                                          (displayedTaskList[
                                                                      index]
                                                                  .fields
                                                                  .progress
                                                                  .percent)
                                                              .toDouble(),
                                                      onChange: (double value) {
                                                        print(value);
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
