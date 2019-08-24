# command pattern sample
以下を参考に Ruby で実装しています.
- [Java言語で学ぶデザインパターン入門](https://www.hyuki.com/dp/) \
クラスで表現する > 第22章 Command ― 命令をクラスにする

# UML
![](https://github.com/staka121/command_pattern_sample/blob/master/image/Command%20Pattern.png)

# 使い方
```sh
$ ruby src/main.rb
```
```
Put your string (10 times)
# input string #
[input] test
# execute result #
test
# history #
test

# input string #
[input] text
# execute result #
text
# history #
test
text
```
