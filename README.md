# matlab
数値解析ソフトウェアMATLABで使うことができるファイルです。

## get_figure_outer_position.m
figureウィンドウを表示する際、位置を指定して出力する関数です。
* マルチモニターに対応
* 位置は「全面(`full`)、左上(`upperleft`)、右上(`upperright`)、左下(`lowerleft`)、右下(`lowerright`)、上半面(`upperhalf`)、下半面(`lowerhalf`)」から選択
* 複数のfigureウィンドウを表示するときに便利

```
position = get_figure_outer_position(monitorNo, figurePositionName);
```
* `monitorNo`：ディスプレイモニターの番号（メインモニターは1）
* `figurePositionName`：figureウィンドウを表示したい位置（stringで指定）
* `position`：figureウィンドウの外側の位置とサイズ `[left right width height]`

使用例
```
f = gcf;
f.OuterPosition = get_figure_outer_position(1, 'upperleft');
```

## Author
Yuma Ito

## License
This software is released under the MIT License, see LICENSE.txt.

