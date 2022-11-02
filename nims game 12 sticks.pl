nim :- next(12), !.
 
next(N) :-
	% human Turn
	format('How many sticks would you like to take? '),
	read_line_to_codes(user_input, Line),
	number_codes(Playerchoice, Line),
	member(Playerchoice,[1,2,3]),
	N1 is N - Playerchoice,
	format('You take ~d sticks~n~d sticks remaining.~n~n', [Playerchoice, N1]),
 
	% Computer Turn
	CompGuess is 4 - Playerchoice,
	N2 is N1 - CompGuess,
	format('Computer takes ~d sticks~n~d sticks remaining.~n~n', [CompGuess, N2]),
	(
		N2 = 0 
		-> format('Computer wins!')
		; next(N2)
	).