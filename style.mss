// PALETTE //
@name: '[name_en]';
@background: #f5eff8;
@water: #a6c9db;
@admin: #1e4a91;
@wood: #1a5c4c;

// FONTS //
@font_bold: 'Marselis Slab Offc Pro Bold';
@font: 'Marselis Slab Offc Pro Regular';


Map {
  background-color: @background;
}


#water {
  polygon-fill: @water;
}

#admin[maritime=0] {
  [admin_level=2]{
    line-join: round;
    line-color: @admin;
    line-width: 0.5;
    [zoom>=4] { line-width: 1; }
    [zoom>=6] { line-width: 2; }
    [zoom>=8] { line-width: 4; }
    [disputed=1] { line-dasharray: 4,4; }
    }
  [admin_level=4][zoom>=4]{
      line-color: @admin;
      line-width: 0.5;
      line-dasharray: 2,2;
    [zoom>=6]{ line-width: 1; }
    [zoom>=10]{ line-width: 2; }
  }
}

#country_label[zoom>=3] {
  text-name: @name;
  text-face-name: @font_bold;
  text-fill: @admin;
  text-size: 10;
  text-halo-fill: @background;
  text-halo-radius: 1;
  [zoom>=3][scalerank=1],
  [zoom>=4][scalerank=2],
  [zoom>=5][scalerank=3],
  [zoom>=6][scalerank>3] {
    text-size: 12;
  }
  [zoom>=4][scalerank=1],
  [zoom>=5][scalerank=2],
  [zoom>=6][scalerank=3],
  [zoom>=7][scalerank>3] {
    text-size: 13;
    text-halo-radius: 2;
  }
}

#state_label[zoom>=5][area>=60000],
#state_label[zoom>=7][area>=10000],
#state_label[zoom>=8][area>=6000],
#state_label[zoom>=9][area>=1000]{
  text-name: @name;
  text-face-name: @font;
  text-fill: @admin;
  text-size: 10;
  text-halo-fill: @background;
  text-halo-radius: 1;
  }

#landuse[zoom>=6]{
  [class='grass'],[class='wood']{ polygon-fill: @wood; 
  [zoom<=10]{ opacity: 0.2;}
}
}