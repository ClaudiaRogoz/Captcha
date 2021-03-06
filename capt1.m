function str = captcha_incercare(input_img_path)
	tic;	
	chars={
	'A','A','A','a','a','a','a','a',...
	'B','B','B','b','b','b','b','b',...
	'C','C','C','c','c','c','c','c', 		'D','D','D','d','d','d','d','d',...
	'E','E','e','e','e','e','e','e',...
	'F','f','F','f','f','f','f','f', 		'G','g','g','G','G','g','g','g', 		'H','h','h','H','H','H','h','h', ...
	'I','I', ...
	'J','J','J',...
	'K','k','k','k','k','k','k','k', 		'L','l','l','l','L','L','L','L','L', 		'M','m','m','m','M','M','m', ...
	'N','n','n','n','N','n','N','n', 		'O','O','O','O','O','O','O','O', 		'P','P','P','P','P','P','P','P', 		'Q','Q','Q','Q','Q','Q','Q','Q', 		'R','R','R','R','R','R','R', ...
	'S','S','S','S','S','S','S','S',...
	'T','T','T','T','T','T','T','T',...
	'U','U','U','U','U','U','U','U', 		'V','V','V','V','V','V','V', ...
	'W','W','W','W','W','W','W','W',... 
	'X','X','X','X','X','X','X','X', 		'Y','Y','Y','Y','Y','Y','Y','Y', 		'Z','Z','Z','Z','Z','Z','Z','Z'};
	str = "";
	f=fopen('my_matrix','rt');
	Im = imread(input_img_path);
	Im(find(Im~=255))=0;
	Im(find(Im~=0))=1;	
	[ r, c ] = find(Im==0);
	c = unique(c);
	block = [ 0; find(diff(c) >3); length(c) ];
	x = length(block);
	A=dlmread(f,'\n')	
	value=floor(x/3);
	for i=1:value
		A=Im(:,c(block(i)+1):c(block(i+1)));
		[l, f]=find(A==0);		
		l = unique(l);
		B = A(l,:);		
		B=double(B);		
		B=sum(B);
		for j=1:length(A)
			if (size(A{i,1}))==(size(C)) && A{i,1}==C
				str=strcat(str,chars{j});
				break;
			end
		end
	end
	toc;	
end
