function h = histogram(input_img_path)
	tic;
	h = zeros(1, 256);
	Im=double(imread(input_img_path));
	for i=1:256
		[r,c]=find(Im==(i-1));
		[n,m]=size(r);
		h(i)=n;
	end
	toc;    
    % TODO Read the image, store the histogram in h.
    % Be careful: h(i) corresponds to a intensity of i - 1. We are forced to do
    % so because of GNU Octave's indexing (which starts at 1).
    
endfunction
