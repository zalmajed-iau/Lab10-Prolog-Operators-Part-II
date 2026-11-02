% Lab 10 - Task 1
% Calculate Area and Perimeter

% Square
square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

% Rectangle
rectangle(Length, Width, Area, Perimeter) :-
    Area is Length * Width,
    Perimeter is 2 * (Length + Width).

% Triangle
triangle(Base, Height, Side2, Side3, Area, Perimeter) :-
    Area is (Base * Height) / 2,
    Perimeter is Base + Side2 + Side3.
