include <../includes.scad>

// variables
alpha_size = 5;
word_size = 3;
centered_position = [0,.30];
top_alpha_position = [0,-0.8];
bottom_alpha_position = [0,0.8];
top_word_position = [0,-.3];
bottom_word_position = [0,.3];

//ROW 2
u(1.25) translate_u(-.25,-3) cherry_row(4) front_legend("shift",size=word_size, position=centered_position) key(
        $dish_type="spherical",
        $key_shape_type = "sculpted_square",
        $dish_depth=2.6,
        //$corner_radius = 2.5,
        $width_difference = 6,
        $height_difference = 6,
        $height_slices = 5,
        //$corner_sculpting_factor = 10,
        $total_depth = 12,
        $support_type = "bars",
        $corner_radius = 1,
        $dish_skew_y = -1,
        $dish_overdraw_height = 2,
        $dish_overdraw_width = 4
);
legends_row_2 = [
 ["N"]
];
for(y = [0:len(legends_row_2)-1]){
    if(len(legends_row_2[y]) == 2){
        translate_u(y+1,-3) cherry_row(4) front_legend(legends_row_2[y][0], position=[0,-0.8], size=4) front_legend(legends_row_2[y][1], position=[0,0.8], size=3.5) key(
            
        );
    }
    else{
        translate_u(y+1,-3) cherry_row(4) front_legend(legends_row_2[y][0], position=centered_position, size=alpha_size) key(
        $dish_type="spherical",
        $key_shape_type = "sculpted_square",
        $dish_depth=2.6,
        //$corner_radius = 2.5,
        $width_difference = 6,
        $height_difference = 6,
        $height_slices = 5,
        //$corner_sculpting_factor = 10,
        $total_depth = 12,
        $support_type = "flared",
        $corner_radius = 1,
        $dish_skew_y = -1,
        $dish_overdraw_height = 2,
        $dish_overdraw_width = 2
        
        );
        
    }
}