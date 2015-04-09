function rgb2gray(input_img_path, output_img_path)
    % TODO Read the file denoted by "input_img_path", transform it to grayscale
    % and save it to "output_img_path".
    % You should use the following formula for determining the intensity of each
    % pixel:% G(i, j) = 0.2989 * Red(i, j) + 0.5870 * Green(i, j) +
 %0.1140 * Blue(i, j)
	Im=double(imread(input_img_path));
	[n,m,p]=size(Im);
	G=uint8(zeros(n,m));	
	G(:,:)=0.2989*Im(:,:,1)+0.5870*Im(:,:,2)+0.1140*Im(:,:,3);
	G=floor(G);
	imwrite(uint8(G),output_img_path,'png');
endfunction

