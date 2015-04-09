function letter=search(A)
	ABC={'A','B','C','D',...
'E','F','G','H',...
'I','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
	filelist=getAllFiles('letter_images');
	[n,m]=size(filelist);
	for i=1:n
		G=imread(filelist{i});
		figure,imshow(G);	
		if all(reshape(A,n,m),G)==1
		letter=ABC(ceil(i/8));					
		break;
	end			
end
