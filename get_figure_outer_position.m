function position = get_figure_outer_position(monitorNo, figurePositionName)
% ディスプレイモニターに合わせたFigureウィンドウのOuterPositionを出力する関数
% 全面(full)、左上(upperleft)、右上(upperright)、左下(lowerleft)、右下(lowerright)、上半面(upperhalf)、下半面(lowerhalf)から選択
% 
% 入力：monitorNo(モニターの番号), figurePositionName(位置)
% 出力：Figureウィンドウの外側の位置とサイズ[left right width height]

%% 初期化

monitorPosition = get(0, 'MonitorPositions');
left = monitorPosition(monitorNo, 1);
bottom = monitorPosition(monitorNo, 2);
width = monitorPosition(monitorNo, 3);
height = monitorPosition(monitorNo, 4);

FigurePosition = struct;
FigurePosition.upperLeft = [left, bottom+height/2, width/2, height/2];
FigurePosition.upperRight = [left+width/2, bottom+height/2, width/2, height/2];
FigurePosition.lowerLeft = [left, bottom, width/2, height/2];
FigurePosition.lowerRight = [left+width/2, bottom, width/2, height/2];
FigurePosition.full = [left, bottom, width, height];
FigurePosition.upperHalf = [left, bottom+height/2, width, height/2];
FigurePosition.lowerHalf = [left, bottom, width, height/2];


%% 出力

switch figurePositionName
	case 'full'
		position = FigurePosition.full;
	case 'upperleft'
		position = FigurePosition.upperLeft;
	case 'upperright'
		position = FigurePosition.upperRight;
	case 'lowerleft'
		position = FigurePosition.lowerLeft;
	case 'lowerright'
		position = FigurePosition.lowerRight;
	case 'upperhalf'
		position = FigurePosition.upperHalf;
	case 'lowerhalf'
		position = FigurePosition.lowerHalf;
		
	otherwise
		str = ['Error! \nYou must input a correct name as blow.\n', ...
			'-> full, upperleft, upperright, lowerleft, lowerright, upperhalf, lowerhalf'];
		error(str, 0);
end

end
