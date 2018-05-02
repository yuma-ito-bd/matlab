function position = get_figure_outer_position(monitorNo, figurePositionName)
% �f�B�X�v���C���j�^�[�ɍ��킹��Figure�E�B���h�E��OuterPosition���o�͂���֐�
% �S��(full)�A����(upperleft)�A�E��(upperright)�A����(lowerleft)�A�E��(lowerright)�A�㔼��(upperhalf)�A������(lowerhalf)����I��
% 
% ���́FmonitorNo(���j�^�[�̔ԍ�), figurePositionName(�ʒu)
% �o�́FFigure�E�B���h�E�̊O���̈ʒu�ƃT�C�Y[left right width height]

%% ������

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


%% �o��

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
