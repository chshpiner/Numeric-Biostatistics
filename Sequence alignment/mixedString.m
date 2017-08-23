function random_seq=mixedString(seq2)%find a random string
string = seq2;
random_seq = [];
while length(string) > 0
	% Get a random location in string.
	index = randi(length(string), 1);
	% Append that to mixedString.
	random_seq = [random_seq, string(index)];
	% Remove that letter from string.
	string(index) = [];
end
end

