%Zadanie 2
int: n = 4;
set of int: VERTICES = 1..n;

array[1..4, 1..2] of int: edges = [|1, 2|1, 3|2, 4|3, 4|];

array[VERTICES] of var 1..n: color;

var int: max_color;

constraint forall(e in 1..4)(color[edges[e, 1]] != color[edges[e, 2]]);
constraint max_color = max(color);

solve minimize max_color;

output [
  "Colors: \n",
  "A = ", show(color[1]), "\n",
  "B = ", show(color[2]), "\n",
  "C = ", show(color[3]), "\n",
  "D = ", show(color[4]), "\n",
  "Min colors used: ", show(max_color)
];