function salt_pepper(input_img_path, mask,output_img_path)
	tic;	
	Im=imread(input_img_path);
	[n,m,p]=size(Im);
	[r,c]=find(mask==1);
	for p=1:length(r)
		i=r(p);
		j=c(p);
		if i>1 && j>1 && j<m && i<n
	Im(i,j,:)=mean([Im(i-1,j-1:j+1,:) Im(i,j-1,:)  Im(i,j+1,:) Im(i+1,j-1:j+1,:)]);
		end
	end
	imwrite(Im,'out.png','png');
	toc;
endfunction
