// the point of this file is to be a sort of DSL for constructing keycaps.
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

include <./includes.scad>


// example key
//dcs_row(5) legend("⇪", size=9) key();
//dcs_row(4) legend("€", size=9) key();

/*for (x = [0:1:3]){
    translate_u(0, -x) dcs_row(5) legend("q") key();
}*/

// example row
/* for (x = [0:1:4]) {
  translate_u(0,-x) dcs_row(x) key();
} */


//ROW 3
legends_row_3 = [
 ["A"], ["S"], ["D"], ["F"], ["G"], ["H"], ["J"], ["K"], ["L"], ["ò","@"], ["à","#"], ["ù","§"]
];


cherry_row(1) legend(legends_row_3[9][0], position=[0,-0.8], size=4) legend(legends_row_3[9][1], position=[0,0.8], size=3.5) key();

//translate_u(2) cherry_row(4) rshift() legend("Espresso", size=4) key();


/*
translate_u(0, -1) dcs_row(5) legend("\\", size=5) key();
translate_u(0, -2) dcs_row(1) legend("1", size=5) key();
translate_u(0, -3) dcs_row(2) legend("Q", size=5) key();
translate_u(0, -4) dcs_row(3) legend("A", size=5) key();
translate_u(0, -5) dcs_row(4) legend("Z", size=5) key();
translate_u(0, -6) dcs_row(1) legend("Z", size=5) key();*/