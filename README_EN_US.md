# flutter_magic

a flutter Syntactic sugar

To help Flutter developers reduce nesting levels and amount of code, a syntax sugar plugin has been designed that
provides concise syntax to wrap and combine widgets.
Focus on reducing "death nesting" and simplifying code structure:

- Reduce nesting levels
- Reduce code
- Reduce code reading difficulty
- Reduce code maintenance difficulty

## Usage

```shell
flutter pub add flutter_magic
```

## Example

```dart

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("123")
        .fontSize(20)
        .color(Colors.red)
        .padding(all: 10);
  }
}

```

## Plugin function summary
### Text

| Class       | Method       | Description           |
|-------------|--------------|-----------------------|
| Text        | color        | Sets text color       |
| Text        | style        | Sets text style       |

### Widget

| Class       | Method       | Description                |
|-------------|--------------|----------------------------|
| Widget      | paddingOnly  | Sets padding              |
| Widget      | size         | Sets width                |
| Widget      | center       | Centers the widget        |
| Widget      | fill         | Expands to fill space     |
| Widget      | alignment    | Sets alignment            |
| Widget      | onTap        | Tap event                 |
| Widget      | rotate       | Rotates the widget        |
| Widget      | opacity      | Sets opacity              |
| Widget      | scale        | Scales the widget         |
| Widget      | gray         | Applies grayscale         |
| Widget      | blur         | Applies blur              |
| Widget      | clipRRect    | Clips with rounded corners|
| Widget      | background   | Sets background           |

### String

| Class       | Property     | Description               |
|-------------|--------------|---------------------------|
| String      | h1, h2, h3, h4 | Sets heading size       |
| String      | title        | Sets as title            |
| String      | subTitle     | Sets as subtitle         |

### Number

| Class       | Property     | Description               |
|-------------|--------------|---------------------------|
| int, double | wPadding     | Sets horizontal padding   |
| int, double | hPadding     | Sets vertical padding     |
| int, double | wPercent     | Sets horizontal percentage|
| int, double | hPercent     | Sets vertical percentage  |
| int, double | padding      | Sets padding             |

## GitHub

https://github.com/newpanjing/flutter_magic