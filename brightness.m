function new_brightness = brightness(input_img_path, x)
	tic;	
	new_brightness = 0;
	Im=imread(input_img_path);
	Im(:,:)=Im(:,:)+x;
	 r=mean(Im);
	new_brightness=new_brightness+mean(r);	
	new_brightness=floor(mean(new_brightness));    
	% TODO Read the image, add x to each pixel.
    
    % TODO Every value below 0 should be set to 0.

    % TODO Every value above 255 should be set to 255.

    % TODO Compute and return the mean value of the pixel intensities of the
    % new image.
    toc;
endfunction
