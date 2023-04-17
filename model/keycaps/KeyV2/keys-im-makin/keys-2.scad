include <../includes.scad>

// settings
$outset_legends = false;
$dish_type="spherical";

// variables
alpha_size = 3;
word_size = 2;
centered_position = [0,0];
top_alpha_position = [0,-0.8];
bottom_alpha_position = [0,0.8];
top_word_position = [0,-.3];
bottom_word_position = [0,.3];

// legends rows

legends_row_FN = [
 ["esc"], ["F1"], ["F2"], ["F3"], ["F4"], ["F5"], ["F6"], ["F7"], ["F8"], ["F9"], ["F10"], ["F11"], ["F12"], ["delete"]
];

legends_row_numbers = [
    ["\~","\`"], ["!","1"], ["\@","2"], ["#","3"], ["$","4"], ["%","5"], ["6","^"], ["7","&"], ["8","*"], ["9","("], ["0",")"], ["_","-"], ["+","="]
];

rows = [
    legends_row_FN
];

for(row=[0:len(rows)-1]){
    for(y = [0:len(rows[row])-1]){
        if(y==0){
            u(1.25) 
            translate_u(-.25,1) 
            cherry_row(1) 
            legend(rows[row][y][0], position=centered_position, size=word_size) 
            key(
                $dish_depth=4,
                $total_depth = $total_depth+2.6,
                $support_type = "flared",
                $dish_skew_y = -2,
                $dish_overdraw_height = 2,
                $dish_overdraw_width =2
            );
        }
        else if(y==len(rows[row])-1){
            u(1.25) 
            translate_u(len(rows[row])+1.25,1) 
            cherry_row(1) 
            legend(rows[row][y][0], position=centered_position, size=word_size) 
            key(
                $dish_depth=4,
                $total_depth = $total_depth+2.6,
                $support_type = "flared",
                $dish_skew_y = -2,
                $dish_overdraw_height = 2,
                $dish_overdraw_width =2
            );
        }
        else{
            u(1) 
            translate_u(y+1,1) 
            cherry_row(1) 
            legend(rows[row][y][0], position=[0,0], size=alpha_size) 
            key(
                $dish_depth=4,
                $total_depth = $total_depth+2.6,
                $support_type = "flared",
                $dish_skew_y = -2,
                $dish_overdraw_height = 2,
                $dish_overdraw_width =2
            );
        }
    }
}