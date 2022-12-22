material design adaptive_breakpoints with freezed functionality

## Features

- Detect current screen size according to material design implementing of it's own break point
- Support both material 2 and material 3 design system


## Usage
Check example tab
```dart
AdaptiveBuilder(
        builder: (context, entry, constraints) {
          return entry.type.when(
            xs: () {
              return Text("xs $_counter");
            },
            s: () {
              return Text("s $_counter");
            },
            m: () {
              return Text("m $_counter");
            },
            l: () {
              return Text("l $_counter");
            },
            xl: () {
              return Text("xl $_counter");
            },
          );
        },
      )
```

```dart
context.adaptive.maybeWhen(
    l: () {
        print("large");
    },
    orElse: () {
        print("other sizes")
    }
)
```