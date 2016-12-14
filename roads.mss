@motorway: #ff4a1c;
@trunk: #fc6724;
@primary: #f18f01;
@road: #f8f5ef;
@road_outline: #605f5e;

// defining fill widths for roads //
@maj_z9: 1.4;
@maj_z10: 1.8;  @med_z10: 0.6;  @min_z10: 0.1;
@maj_z11: 2;    @med_z11: 0.8;  @min_z11: 0.2;
@maj_z12: 2.5;  @med_z12: 1;    @min_z12: 0.5;
@maj_z13: 4; 	@med_z13: 3;    @min_z13: 0.5;
@maj_z14: 6;    @med_z14: 4;    @min_z14: 0.5;
@maj_z15: 7;    @med_z15: 5;  	@min_z15: 2;
@maj_z16: 10;   @med_z16: 8;    @min_z16: 4;
@maj_z17: 14;   @med_z17: 10;   @min_z17: 5;
@maj_z18: 18;   @med_z18: 12;   @min_z18: 8;
@maj_z19: 20;   @med_z19: 16;   @min_z19: 10;

#road[zoom>=6]{
  [class='motorway']{
    line-color: lighten(@motorway,10);
    line-width: 0.5;
    [zoom>=10] { line-width: 1; }
    }
  [class='motorway_link'][zoom>=9]{
    line-color: lighten(@motorway,10);
    line-width: 0.5;
    }
  [class='trunk'][zoom>=8]{
    line-color: lighten(@trunk,10);
    line-width: 0.5;
    }
  [class='primary'][zoom>=9]{
    line-color: lighten(@primary,10);
    line-width: 0.5;
    }
  [zoom>=11]{
    [class='secondary'],[class='tertiary'],
      [class='street']{
      line-color: darken(@road,8);
      line-width: 0.5;
      }
    }
  }