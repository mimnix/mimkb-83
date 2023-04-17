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
    ["\~","\`"], ["!","1"], ["\@","2"], ["#","3"], ["$","4"], ["%","5"], ["6","^"], ["7","&"], ["8","*"], ["9","("], ["0",")"], ["_","-"], ["+","="], ["backspace"]
];

legends_row_qwerty = [
    ["tab"], ["Q"], ["W"], ["E"], ["R"], ["T"], ["Y"], ["U"], ["I"], ["O"], ["P"], ["{","["], ["}","]"], ["pg up"]
];

rows = [
 // [ legends row, cherry row number ]
    //[legends_row_FN, 1],
    [legends_row_numbers, 1]//,
    //[legends_row_qwerty, 2]
];

for(row=[0:len(rows)-1]){
    for(y = [0:len(rows[row][0])-1]){

        if(y==len(rows[row][0])-1){
          // consider setting key offset
        }
        make_key(
            key_size=(y==0 || y==len(rows[row][0])-1) ? 1.25 : 1, 
            row_count=row, 
            key_count=y,
            cherry_row_number=rows[row][1],
            legends=rows[row][0][y]
        );
    }
}
module make_key(
    key_size, 
    row_count, 
    key_count,
    cherry_row_number,
    legends
){
    u(key_size) 
    translate_u(key_count+1.25,-row_count) 
    cherry_row(cherry_row_number)
    legend(legends[0], position=centered_position, size=word_size) 
    key(
        $dish_depth=4,
        $total_depth = $total_depth+2.6,
        $support_type = "flared",
        $dish_skew_y = -2,
        $dish_overdraw_height = 2,
        $dish_overdraw_width =2
    );
}

module get_legends(
    legends
){
    if(len(legends==2)){
            
    }
    else{
        
    }
}