// just hacking this in here to get taller front legends
depth_offset = -1.2;

module keytext(text, position, font_size, depth) {
  woffset = (top_total_key_width()/3.5) * position[0];
  hoffset = (top_total_key_height()/3.5) * -position[1];
  translate([woffset, hoffset, -depth+depth_offset]){
      ang = 3;
      d = 2*tan(ang);
  minkowski() {
// thin extrusion of 2D path
linear_extrude(height=$dish_depth + depth){
      text(text=text, font=$font, size=font_size, halign="center", valign="center");
}
bigness = .1;
// a 30 degree pyramid with its apex at the origin 
rotate_extrude() polygon([ [0,0] , [7*bigness, -14*bigness], [0, -14*bigness] ]);
}
    color($tertiary_color) ;
    
  }
}

module legends(depth=0) {

  if (len($front_legends) > 0) {
    front_of_key() {
      for (i=[0:len($front_legends)-1]) {
        rotate([95,0,0]) keytext($front_legends[i][0], $front_legends[i][1], $front_legends[i][2], depth+depth_offset);
  	  }
    }
  }
  if (len($legends) > 0) {
    top_of_key() {
      for (i=[0:len($legends)-1]) {
        keytext($legends[i][0], $legends[i][1], $legends[i][2], depth);
      }
    }
  }
}
