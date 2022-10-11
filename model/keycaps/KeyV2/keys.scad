include <./includes.scad>

//ROW FN
legends_row_FN = [
 ["ESC"], ["F1"], ["F2"], ["F3"], ["F4"], ["F5"], ["F6"], ["F7"], ["F8"], ["F9"], ["F10"], ["F11"], ["F12"], ["Prn"], ["Del"]
];

for(y = [0:len(legends_row_FN)-1]){
    translate_u(y,1) cherry_row(1) legend(legends_row_FN[y][0], position=[0,0], size=4) key();
}

//ROW 5
legends_row_5 = [
 ["\\","|"], ["1","!"], ["2","\""], ["3","£"], ["4","$"], ["5","%"], ["6","&"], ["7","/"], ["8","("], ["9",")"], ["0","="], ["'","?"], ["ì","^"]
];
for(y = [0:len(legends_row_5)-1]){
    translate_u(y) cherry_row(1) legend(legends_row_5[y][0], position=[0,-0.8], size=4) legend(legends_row_5[y][1], position=[0,0.8], size=3.5) key();
}
u(2) translate_u(len(legends_row_5)+0.5) cherry_row(1) legend("⇤", size=10) key();
translate_u(len(legends_row_5)+2) cherry_row(1) legend("Pg↑", size=4) key();

//ROW 4
u(1.5) translate_u(0.25,-1) cherry_row(2) legend("↹",size=10) key();
legends_row_4 = [
 ["Q"], ["W"], ["E","€"], ["R"], ["T"], ["Y"], ["U"], ["I"], ["O"], ["P"], ["è","é"], ["+","*"]
];
for(y = [0:len(legends_row_4)-1]){
    if(len(legends_row_4[y]) == 2){
        translate_u(y+1.5,-1) cherry_row(2) legend(legends_row_4[y][0], position=[0,-0.8], size=4) legend(legends_row_4[y][1], position=[0,0.8], size=3.5) key();
    }
    else{
        translate_u(y+1.5,-1) cherry_row(2) legend(legends_row_4[y][0], position=[0,-0.8], size=4) key();
    }
}
//cherry_row(2) translate_u(len(legends_row_4)+1.88,-1.5) legend("↵", size=6, position=[0,-0.4]) iso_enter() key();
translate_u(len(legends_row_4)+3, -1) cherry_row(2) legend("Pg↓", size=4) key();


//ROW 3
u(1.70) translate_u(0.35,-2) cherry_row(3) legend("▲",size=10) key();
legends_row_3 = [
 ["A"], ["S"], ["D"], ["F"], ["G"], ["H"], ["J"], ["K"], ["L"], ["ò","@"], ["à","#"], ["ù","§"]
];
for(y = [0:len(legends_row_3)-1]){
    if(len(legends_row_3[y]) == 2){
        translate_u(y+1.7,-2) cherry_row(3) legend(legends_row_3[y][0], position=[0,-0.8], size=4) legend(legends_row_3[y][1], position=[0,0.8], size=3.5) key();
    }
    else{
        translate_u(y+1.7,-2) cherry_row(3) legend(legends_row_3[y][0], position=[0,-0.8], size=4) key();
    }
}
translate_u(len(legends_row_3)+3,-2) cherry_row(3) legend("Hom", position=[0,0], size=4) key();

//ROW 2
u(1.25) translate_u(0.12,-3) cherry_row(4) legend("△",size=10) key();
legends_row_2 = [
 ["<",">"], ["Z"], ["X"], ["C"], ["V"], ["B"], ["N"], ["M"], [",",";"], [".",":"], ["-","_"]
];
for(y = [0:len(legends_row_2)-1]){
    if(len(legends_row_2[y]) == 2){
        translate_u(y+1.25,-3) cherry_row(4) legend(legends_row_2[y][0], position=[0,-0.8], size=4) legend(legends_row_2[y][1], position=[0,0.8], size=3.5) key();
    }
    else{
        translate_u(y+1.25,-3) cherry_row(4) legend(legends_row_2[y][0], position=[0,-0.8], size=4) key();
    }
}
u(1.7) translate_u(len(legends_row_2)+2,-3) cherry_row(4) legend("△", size=10) key();
translate_u(14.75,-3) cherry_row(4) legend("↑",size=7) key();
translate_u(15.75,-3) cherry_row(4) legend("End",size=4) key();


//ROW 1
u(1.25) translate_u(0.25,-4) cherry_row(5) legend("ctrl",size=4) key();
u(1.25) translate_u(1.75,-4) cherry_row(5) legend("☢",size=10) key();
u(1.25) translate_u(3.25,-4) cherry_row(5) legend("alt",size=4) key();
translate_u(7.12,-4) legend("PROTOTYPE 0",size=4) spacebar() key();
translate_u(10.75,-4) cherry_row(5) legend("Alt",size=4) key();
translate_u(11.75,-4) cherry_row(5) legend("Fn",size=4) key();
translate_u(12.75,-4) cherry_row(5) legend("Ctr",size=4) key();
translate_u(13.75,-4) cherry_row(5) legend("←",size=7) key();
translate_u(14.75,-4) cherry_row(5) legend("↓",size=7) key();
translate_u(15.75,-4) cherry_row(5) legend("→",size=7) key();