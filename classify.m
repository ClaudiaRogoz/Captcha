% Given an image of a character, return the corresponding character in the image
function char = classify(char_image)
  % Sum of white pixels in each column
	m{1} = [40 28 24 21 28 33 38 39 40 40 40 39 38 39 40];
	m{2} = [38 29 21 23 30];
	m{3} = [39 38 34 35 33 35 33 34 30 34 34 35 32 33 29 31 28 30 30 35 37 40];
	m{4} = [39 38 37 37 38 37 37 38 36 34 28 22 19 25 36 36 39 38 39 39 39 37 37 40 40];
  m{5} = [40 39 37 37 38 38 40 39 35 35 33 34 28 29 31 30 27 29 39 39 38 32 27 24 28 40];
	m{6} = [32 28 29 31 33 33 34 35 36 37 37 39 39 39 38 37 38 37 36 37];
	m{7} = [34 29 27 29 34 35 34 36 36 37 37 37 37 36 35 35 34 34 31 29 29 32];
	m{8} = [36 33 32 35 35 36 36 34 31 33 37];
	m{9} = [39 32 23 20 20 28 36 38 36 35 37 35 35 34 35 35 32 28 24 27 31 35];
	m{10} = [39 38 35 32 33 32 32 33 33 36 36 38 33 36 34 33 34 34 35 34 36 39];
	m{11} = [36 33 33 33 34 34 34 33 30 32 34 37 36 37 35 34 33 31 29 26 30 33];
	m{12} = [40 38 37 38 39 38 38 39 39 39 32 29 27 31 28 32 35];
	m{13} = [40 32 27 27 29 32 33 34 34 33 34 36 38 39 36 33 33 34 34 27 24 28 34 40];
	m{14} = [35 27 23 31 38 37 35 32 29 29 32 27 31 32 35];
	m{15} = [39 38 38 34 31 33 35 36 36 34 26 29 32 32 29 30 35 39 39 39 39 40 40 34 33 37 40];
	m{16} = [40 38 38 38 38 39 30 23 23 28 39 40 40 39 40 39 40];
	m{17} = [38 31 28 33 34 34 35 36 35 37 37 38 38 36 36 37 36 37 35 35 28 30 35 39 38 38 38];
	m{18} = [36 28 23 23 28 38 39 39 40 38 39 40 40 39 39 33 24 21 26 35];
	m{19} = [38 29 22 26 31 38 40 39 40 39 38 38 40 38 38 35 26 24 32 37];
	m{20} = [39 32 29 25 24 32 33 35 35 38 40 39 38 34 33 34 32 28 27 27 36];
	m{21} = [40 38 36 37 37 37 36 35 32 30 31 33 33 34 31 31 32 35 36 37 37 35 34 36 37];
	m{22} = [36 32 29 31 32 34 33 33 30 33 38];
	m{23} = [34 33 32 35 37 36 37 33 34 36 36 35 36 35 35 32 35];
	m{24} = [40 34 33 34 30 31 31 32 33 31 33 35 31 30 32 36 37];
	m{25} = [37 26 19 31 35 38 38 37 37 35 36 36 32 35 39];
	m{26} = [34 32 33 36 36 35 35 30 28 30 30 30 30 38 36 36 34 30 32 34];
	m{27} = [34 33 28 29 33 37 35 33 33 34 37 38 40 38 38 35 35 35 31 28 25 27 32 36];
	m{28} = [33 29 21 22 24 31 33 32 32 33 32 32 30 28 26 33 38];
	m{29} = [34 32 33 34 35 35 36 36 33 36 37 39 38 39 38 38 38 38 40];
	m{30} = [38 37 38 38 39 38 38 39 35 26 17 21 28 39 38 38 38 37 38 38 39 39];
	m{31} = [37 35 33 35 36 37 36 34 33 28 26 24 30 33 38 38 38 37 37 38 39 40];
	m{32} = [34 31 26 30 33 34 34 35 35 35 36 34 33 32 34 36 35 34 33 29 33 35 38];
	m{33} = [38 33 30 30 29 38 35 33 35 38 36 36 37 35 35 36 38];
	m{34} = [38 29 22 21 27 36 35 34 33 30 33 35 33 34 35 39];
	m{35} = [38 36 33 35 35 35 34 31 30 27 31 33 37 37 37 39 38 39 38 37 39];
	m{36} = [36 26 21 20 23 38 38 37 36 34 35 37 38 38];
	m{37} = [39 37 36 35 35 36 36 37 37 37 37 37 37 35 33 32 30 33 31 29 28 31 34];
	m{38} = [40 21 18 24 26 35 34 34 36 37 37 38 38 38 38 39 38 37 37 38 40];
	m{39} = [40 40 37 33 33 29 30 34 35 32 29 31 33 31 29 35 37 37 40];
	m{40} = [38 36 34 36 36 36 36 35 20 19 25 29 33 38 38 38 38 39 38 39 37 39 40];
	m{41} = [38 26 20 19 32 39 38 38 35 34 35 36 38 36 33 34 36 29 21 24 29];
	m{42} = [36 27 20 23 27 30 32 34 32 32 33 35 36 33 36 39];
	m{43} = [39 39 37 39 40 40 38 32 27 23 24 35];
	m{44} = [37 34 32 34 34 35 34 35 28 27 28 30 33 35];
  m{45} = [38 36 36 34 35 33 28 31 30 32 35 37 36 37 37 37 40];
	m{46} = [38 37 32 31 29 30 30 30 34 34 31 35 38];
	m{47} = [31 23 31 34 34 32 32 33 34 36 36 31 36 39 36 36 37 31 23 31 36];
	m{48} = [39 37 34 32 34 33 34 33 32 25 28 33 38 38 39];
	m{49} = [39 38 37 37 38 38 37 34 35 35 35 35 36 34 29 32 36];
	m{50} = [39 37 34 33 33 31 32 31 33 35 39 38 34 29 27 29 26 26 30 36 36 36 36 37 37 39];
	m{51} = [38 36 33 34 34 33 33 33 29 30 31 34 37 35 33 30 30 32 33 33 34 34 35 36 38];
	m{52} = [39 38 37 37 38 38 39 39 39 38 39 38 37 37 37 27 20 18 21 40];

  chars = ['L' 'I' 'A' 'X' 'W' 'C' 'O' 'I' 'D' 'V' 'D' 'Y' 'O' 'R' 'W' 'T' ...
		 'Q' 'H' 'U' 'G' 'H' 'J' 'S' 'Z' 'P' 'B' 'Q' 'B' 'L' 'Z' 'R' 'G' ...
					 'C' 'K' 'E' 'F' 'U' 'A' 'X' 'K' 'N' 'E' 'J' 'P' 'Y' 'S' 'M' 'F' ...
					 'T' 'M' 'N' 'V'];
  char_image = sum(char_image);

  score = 100;
  char = '-';

  % compare each character in our dataset to the character
  % we're trying to classify
  for i = 1:length(m)
    candidate_char = m{i};

    % only compare characters that are the same width
    if length(candidate_char) == length(char_image)
      candidate_score = max(abs(char_image - candidate_char));
      if candidate_score < score
        score = candidate_score;
        char = chars(i);
      end
    end
  end
end