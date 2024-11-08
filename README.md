# flutter_magic

a flutter Syntactic sugar

### English document

[English document](./README_EN_US.md)

为了帮助 Flutter 开发者减少嵌套层级和代码量，设计了一个语法糖插件，提供简洁的语法来包装和组合小部件。
专注于减少”死亡嵌套”和简化代码结构：

- 减少嵌套层级
- 减少代码量
- 减少代码阅读难度
- 减少代码维护难度


## Usage

```shell
flutter pub add fit
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


## 插件功能概要

### Text

| 类          | 方法          | 描述             |
|------------|-------------|----------------|
| Text       | color       | 设置文本颜色         |
| Text       | style       | 设置字体样式         |

### Widget

| 类          | 方法          | 描述             |
|------------|-------------|----------------|
| Widget     | paddingOnly | 设置内边距          |
| Widget     | size        | 设置宽度           |
| Widget     | center      | 居中             |
| Widget     | fill        | 撑满组件(Expanded) |
| Widget     | alignment   | 对齐方式           |
| Widget     | onTap       | 单机事件           |
| Widget     | rotate      | 旋转             |
| Widget     | opacity     | 透明度            |
| Widget     | scale       | 缩放             |
| Widget     | gray        | 灰度             |
| Widget     | blur        | 模糊             |
| Widget     | clipRRect   | 裁剪圆角           |
| Widget     | background  | 背景             |

### String

| 类          | 属性          | 描述             |
|------------|-------------|----------------|
| String     | h1,h2,h3,h4 | 标题大小           |
| String     | title       | 标题             |
| String     | subTitle    | 子标题            |

### Number
| 类          | 属性       | 描述             |
|------------|----------|----------------|
| int,double | wPadding | 横向间距           |
| int,double | hPadding | 纵向间距           |
| int,double | wPercent | 横向百分比          |
| int,double | hPercent | 纵向百分比          |
| int,double | padding  | 间距             |


## GitHub

https://github.com/newpanjing/flutter_magic