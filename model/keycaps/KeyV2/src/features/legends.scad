// just hacking this in here to get taller front legends
depth_offset = -.3;

module keytext(text, position, font_size, depth) {
  woffset = (top_total_key_width()/3.5) * position[0];
  hoffset = (top_total_key_height()/3.5) * -position[1];
  translate([woffset, hoffset, -depth+depth_offset]){
    color($tertiary_color) 
      chamfer_text(text=text, font=$font, size=font_size, depth=($dish_depth + depth), angle=6.28, halign="center", valign="center");
        
        
    
  }
}

module legends(depth=0) {

  if (len($front_legends) > 0) {
    front_of_key() {
      for (i=[0:len($front_legends)-1]) {
        keytext($front_legends[i][0], $front_legends[i][1], $front_legends[i][2], depth+depth_offset);
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

module chamfer_text(text, font, size, depth, angle, halign, valign) {
  d = depth*tan(angle);
  minkowski(){
    linear_extrude(height=depth*100)
      offset(-d)
    
    
    rotate([90,0,0])
      linear_extrude(d) polygon(points=[[-d,0], [d,0],[0,d]]);
  }
}