import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';
import 'package:task_manager/Providers/formvalueProvider.dart';
import 'package:task_manager/Providers/task_manager_provider.dart';
import 'package:task_manager/task_model/task_model_usingfreezed.dart';

import 'commentPage.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Task Manager'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final GlobalKey<FormBuilderState> _formkey = GlobalKey<FormBuilderState>();
  final GlobalKey<FormBuilderState> _resetformkey =
      GlobalKey<FormBuilderState>();
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskWatcher = ref.watch(taskProvider);
    final formValues = ref.watch(formValuesProvider);
    List<Issues> filteredTaskList = [];
    Map<String, dynamic> formValue = {};
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text('Task Manager'),
        actions: [
          SizedBox(
            width: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilder(
                key: _resetformkey,
                child: IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    _formkey.currentState?.reset();
                    _resetformkey.currentState?.reset();
                    formValue = {};
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
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return SingleChildScrollView(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Container(
                        height: 306,
                        color: const Color.fromARGB(31, 210, 126, 216),
                        child: FormBuilder(
                          key: _formkey,
                          child: ListView(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 4.0, bottom: 4.0),
                                  child: Row(
                                    children: [
                                      //flex:1,
                                      const Expanded(
                                        flex: 1,
                                        // width: 200,
                                        child: ListTile(
                                          title: Text(
                                            "Filter",
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              color: Colors.green,
                                              fontWeight: FontWeight.w400,
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
                                          formValue = {};
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: SizedBox(
                                  height: 55,
                                  child: FormBuilderDateTimePicker(
                                    name: "Date",
                                    decoration: const InputDecoration(
                                      labelText: "Select Date",
                                      border: OutlineInputBorder(),
                                    ),
                                    inputType: InputType.date,
                                    format: DateFormat("MMMM d,y"),
                                    initialDate: DateTime(2015),
                                    firstDate: DateTime(2012),
                                    lastDate: DateTime.now(),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    height: 55,
                                    child: FormBuilderTextField(
                                      name: 'TimeSpent',
                                      decoration: const InputDecoration(
                                        labelText: 'Time Spent(Hr)',
                                        border: OutlineInputBorder(
                                            // borderRadius:
                                            //   BorderRadius.circular(12.0),
                                            ),
                                      ),
                                      validator: FormBuilderValidators.compose(
                                        [
                                          FormBuilderValidators.numeric(),
                                          //FormBuilderValidators.required(),
                                        ],
                                      ),
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    height: 56,
                                    width: 20,
                                    child: ElevatedButton(
                                      style: const ButtonStyle(),
                                      onPressed: () {
                                        if (_formkey.currentState!
                                            .saveAndValidate()) {
                                          formValue =
                                              _formkey.currentState!.value;
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.filter_list_alt))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: taskWatcher.when(
                    data: (taskList) {
                      if (taskList.isNotEmpty) {
                        List<AssigneewithValues> displayList = taskList;
                        if (formValues.isNotEmpty) {
                          displayList = taskList.where((task) {
                            String? timeSpent = formValues['TimeSpent'];
                            DateTime? selectedDatee = formValues['Date'];
                            // print(selectedDatee);
                            // DateTime? date = DateTime.parse(task.date);
                            DateTime? datee =
                                DateFormat("yyyy-MM-dd").parse(task.date);
                            print(datee);
                            // print(date);
                            String? timeInHours = task.timeInHours.toString();
                            bool matchesDate = selectedDatee == null ||
                                (datee == (selectedDatee));
                            bool matchesTime =
                                timeSpent == null || (timeInHours == timeSpent);
                            return (matchesDate && matchesTime);
                          }).toList();
                        }
                        return Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: ListView.builder(
                              itemCount: displayList.isNotEmpty
                                  ? displayList.length
                                  : 1,
                              itemBuilder: (context, index) {
                                if (displayList.isEmpty &&
                                    formValues.isNotEmpty) {
                                  return const Card(
                                    child: ListTile(
                                      title: Text(
                                        'Error',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: Text(
                                        'The user has not created data at this date or time. Please try again.',
                                      ),
                                    ),
                                  );
                                } else {
                                  List<Issues> issuesList =
                                      displayList[index].eachIssues;
                                  // List<Issues> filteredTaskList = [];
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => NewScreen(
                                            newList: issuesList,
                                            filteredList: filteredTaskList,
                                            assigneeName:
                                                displayList[index].name,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 90,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, right: 10.0),
                                        child: Card(
                                          elevation: 5.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Padding(
                                              padding: //EdgeInsets.all(10.0),
                                                  const EdgeInsets.only(
                                                      left: 10.0,
                                                      right: 10.0,
                                                      top: 5.0),
                                              child: Column(
                                                children: <Widget>[
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Container(
                                                        width: 55.0,
                                                        height: 55.0,
                                                        child:
                                                            const CircleAvatar(
                                                          backgroundColor:
                                                              Colors.green,
                                                          foregroundColor:
                                                              Colors.green,
                                                          backgroundImage:
                                                              NetworkImage(
                                                            'https://randomuser.me/api/portraits/men/1.jpg',
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          width: 5.0),
                                                      Column(
                                                        children: <Widget>[
                                                          Text(
                                                            '${displayList[index].assigneKey}',
                                                            style: TextStyle(
                                                                fontSize: 18.0,
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 6.0),
                                                            child: Text(
                                                              '${displayList[index].name}',
                                                              style: const TextStyle(
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 13.0),
                                                            child: Text(
                                                              ' ${displayList[index].email}',
                                                              style: const TextStyle(
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic),
                                                            ),
                                                          ),
                                                          Text(
                                                              '${displayList[index].totalTimeSpentt}',
                                                              style: const TextStyle(
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic)),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              }),
                        );
                      } else {
                        return const Center(
                          child: Text("Data not loaded.."),
                        );
                      }
                    },
                    error: (error, stackTrace) {
                      return Center(
                        child: Text('Error: $error'),
                      );
                    },
                    loading: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
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
