Easy way to implement responsive widgets

## Widgets

# ResponsiveContainer
```dart
     ResponsiveContainer(
      backgroundColor: backgroundColor, // Optional
      desiredWidth: (size.width*desiredWidth)/610, // Required
      desiredHeight: (size.height*desiredHeight)/610, // Required
      child: child, // Required
    );
```

# ResponsiveText
```dart
     ResponsiveText(
      textStyle: TextStyle/GoogleFonts, // Optional
      considerHeight: false, // Optional
      text: text, // Required
    );
```

## Example

```dart
  @override
Widget build(BuildContext context) {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: Scaffold(
      body: SingleChildScrollView(child:
      Column(children: [
        ResponsiveContainer(desiredHeight: 50,desiredWidth: 100,child: ElevatedButton(onPressed: (){

        },child: ResponsiveText(text: "XD",),),),
        ResponsiveText(text: "VERY LONG LONG LONG LONG LONG LONG TEXT",textStyle: GoogleFonts.aldrich(fontSize: 14),),
        Container(width: 200,height: 300,
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return ResponsiveContainer(desiredWidth: 200,desiredHeight: 300,backgroundColor: Colors.amber[colorCodes[index]],

                  child: Center(child: Text('Entry ${entries[index]}')),
                );
              }
          ),
        ),
      ],),
      ),
    ),
  );
}
```
