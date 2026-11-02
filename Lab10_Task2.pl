
% Lab 10 - Task 2
% Login System

% User Dataset
user(zainab, 1234).
user(fatimah, 5678).
user(ali, 9012).
user(ahmed, 3456).
user(eman, 7890).

% Start Login
login :-
    check_login(3).

% Check Username and Password
check_login(Attempts) :-
    write('Enter username: '), nl,
    read(Username),
    write('Enter password: '), nl,
    read(Password),
    verify(Username, Password, Attempts).

% Successful Login
verify(Username, Password, _) :-
    user(Username, Password),
    !,
    write('Login Successful'), nl.

% Failed Login - No Attempts Left
verify(_, _, 1) :-
    !,
    write('Login Unsuccessful'), nl,
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.

% Failed Login - Try Again
verify(_, _, Attempts) :-
    write('Login Unsuccessful'), nl,
    NewAttempts is Attempts - 1,
    check_login(NewAttempts).
