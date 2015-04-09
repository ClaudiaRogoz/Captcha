function str = captcha1(input_img_path)
	tic;	
	str = "";
	Im = imread(input_img_path);
	Im(find(Im~=255))=0;
	Im(find(Im~=0))=1;	
	[ r, c ] = find(Im==0);
	c = unique(c);
	block = [ 0; find(diff(c) >3); length(c) ];
	x = length(block);
	value=floor(x/3);
	for i=1:value
		A=Im(:,c(block(i)+1):c(block(i+1)));
		[l, f]=find(A==0);		
		l = unique(l);
		B = A(l,:);
		parent_dir = "letter_images";
		dirs = ls(parent_dir);
		for k = 1 : length(dirs)
    			dirname = dirs(k, : );
    		files = ls(strcat(parent_dir, "/", dirname));
    		for j = 1 : size(files)(1)
        		filepath = strcat(parent_dir, "/", dirname, "/", files(j, : ));
        		img = imread(filepath);
        		if size(img)==size(B)
        			if size(img)==size(B) && img==B
        				str=strcat(str, dirname);
        				break;
        			endif
        		endif
    		endfor
		endfor		
	end
	toc;	
end
