include <../includes.scad>

// variables
alpha_size = 3;
word_size = 2;
centered_position = [0,0];
top_alpha_position = [0,-0.8];
bottom_alpha_position = [0,0.8];
top_word_position = [0,-.3];
bottom_word_position = [0,.3];

//ROW FN

legends_row_FN = [
 ["esc"], ["F1"], ["F2"], ["F3"], ["F4"], ["F5"], ["F6"], ["F7"], ["F8"], ["F9"], ["F10"], ["F11"], ["F12"], ["delete"]
];

for(y = [0:len(legends_row_FN)-1]){
    if(y=0){
        u(1.25) 
        translate_u(-.25,1) 
        cherry_row(1) 
        legend(legends_row_FN[y][0], position=centered_position, size=word_size) 
        key(

        );
    }
    else if(y=len(legends_row_FN)-1){
        u(1.25) 
        translate_u(len(legends_row_FN)+1.25,1) 
        cherry_row(1) 
        legend(legends_row_FN[y][0], position=centered_position, size=word_size) 
        key(
            
        );
    }
    else{
        u(1) 
        translate_u(y+1,1) 
        cherry_row(1) 
        legend(legends_row_FN[y][0], position=[0,0], size=alpha_size) 
        key(

        );
    }
}

//ROW 5
u(1.25) translate_u(-.25) cherry_row(1) legend("\~",size=alpha_size,position=top_alpha_position) legend("\`",size=alpha_size,position=bottom_alpha_position) key();
legends_row_5 = [
  ["!","1"], ["\@","2"], ["#","3"], ["$","4"], ["%","5"], ["6","^"], ["7","&"], ["8","*"], ["9","("], ["0",")"], ["_","-"], ["+","="]
];
for(y = [0:len(legends_row_5)-1]){
    translate_u(y+1) cherry_row(1) legend(legends_row_5[y][0], position=top_alpha_position, size=alpha_size) legend(legends_row_5[y][1], position=bottom_alpha_position, size=alpha_size) key();
}
u(1.25) translate_u(len(legends_row_5)+1.25) cherry_row(1) legend("backspace", size=word_size) key();

//ROW 4
u(1.25) translate_u(-.25,-1) cherry_row(2) legend("tab",size=word_size) key();
legends_row_4 = [
 ["Q"], ["W"], ["E"], ["R"], ["T"], ["Y"], ["U"], ["I"], ["O"], ["P"], ["{","["], ["}","]"]
];
for(y = [0:len(legends_row_4)-1]){
    if(len(legends_row_4[y]) == 2){
        translate_u(y+1,-1) cherry_row(2) legend(legends_row_4[y][0], position=top_alpha_position, size=alpha_size) legend(legends_row_4[y][1], position=bottom_alpha_position, size=alpha_size) key();
    }
    else{
        translate_u(y+1,-1) cherry_row(2) legend(legends_row_4[y][0], position=centered_position, size=alpha_size) key();
    }
}
//cherry_row(2) translate_u(len(legends_row_4)+1.88,-1.5) legend("↵", size=6, position=[0,-0.4]) iso_enter() key();
u(1.25) translate_u(13.25,-1) cherry_row(2) legend("page up", size=word_size) key();


//ROW 3
u(1.25) translate_u(-.25,-2) cherry_row(3) legend("caps lock",size=word_size) key();
legends_row_3 = [
 ["A"], ["S"], ["D"], ["F"], ["G"], ["H"], ["J"], ["K"], ["L"], [":",";"], ["\"","\'"], ["|","\\"]
];
for(y = [0:len(legends_row_3)-1]){
    if(len(legends_row_3[y]) == 2){
        translate_u(y+1,-2) cherry_row(3) legend(legends_row_3[y][0], position=top_alpha_position, size=4) legend(legends_row_3[y][1], position=bottom_alpha_position, size=alpha_size) key();
    }
    else{
        translate_u(y+1,-2) cherry_row(3) legend(legends_row_3[y][0], position=centered_position, size=4) key();
    }
}
u(1.25) translate_u(13.25,-2) cherry_row(4) legend("return", size=word_size) key();
//ROW 2
u(1.25) translate_u(-.25,-3) cherry_row(4) legend("shift",size=word_size) key();
legends_row_2 = [
 ["Z"], ["X"], ["C"], ["V"], ["B"], ["N"], ["M"], ["<",","], [">","."], ["?","/"]
];
for(y = [0:len(legends_row_2)-1]){
    if(len(legends_row_2[y]) == 2){
        translate_u(y+1,-3) cherry_row(4) legend(legends_row_2[y][0], position=[0,-0.8], size=4) legend(legends_row_2[y][1], position=[0,0.8], size=3.5) key();
    }
    else{
        translate_u(y+1,-3) cherry_row(4) legend(legends_row_2[y][0], position=centered_position, size=4) key();
    }
}
u(1.25) translate_u(13.25,-3) cherry_row(4) legend("shift", size=word_size) key();

u(1) translate_u(11,-3) cherry_row(4) legend("ˆ",size=alpha_size) key();
u(1) translate_u(12,-3) cherry_row(4) legend("",size=0) key();

//ROW 1
u(1.25) translate_u(-.25,-4) cherry_row(5) legend("ctrl",size=alpha_size) key();
u(1) translate_u(1,-4) cherry_row(5) legend("fn",size=alpha_size) key();
u(1) translate_u(2,-4) cherry_row(5) legend("super",size=alpha_size) key();
u(1) translate_u(3,-4) cherry_row(5) legend("alt",size=alpha_size) key();
u(1) translate_u(4,-4) cherry_row(5) legend("home",size=alpha_size) key();
u(2) translate_u(5.5,-4) legend(" ",size=0) key($inverted_dish=true);
u(2) translate_u(7.5,-4) legend(" ",size=0) key($inverted_dish=true);
//translate_u(10.75,-4) cherry_row(5) legend("alt",size=alpha_size) key();
//translate_u(11.75,-4) cherry_row(5) legend("fn",size=alpha_size) key();
//translate_u(12.75,-4) cherry_row(5) legend("ctrl",size=alpha_size) key();
//translate_u(9,-4) cherry_row(5) legend("|",size=word_size,position=top_alpha_position) legend("\\",size=word_size,position=bottom_alpha_position) key();
translate_u(9,-4) cherry_row(5) legend("end",size=word_size) key();
translate_u(10,-4) cherry_row(5) legend("‹",size=alpha_size) key();
translate_u(11,-4) cherry_row(5) legend("ˇ",size=alpha_size) key();
translate_u(12,-4) cherry_row(5) legend("›",size=alpha_size) key();
u(1.25) translate_u(13.25,-4) cherry_row(4) legend("pg dn", size=alpha_size) key();