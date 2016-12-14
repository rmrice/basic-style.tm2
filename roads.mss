@motorway: #ff4a1c;
@trunk: #fc6724;
@primary: #f18f01;
@road: #f8f5ef;
@road_outline: #7e7d7c;

#road::case[zoom>=12]{
  [class='motorway']{
    line-color: @motorway;
    line-width: 2.5;
    [zoom>=12] { line-width: 2.5; }
    [zoom>=13] { line-width: 2.8; }
    [zoom>=14] { line-width: 3; }
    [zoom>=15] { line-width: 3.5; }
    }
  [class='motorway_link'][zoom>=14]{
    line-color: @motorway;
    line-width: 2.5;
    }
  [class='trunk'][zoom>=12]{
    line-color: @trunk;
    line-width: 2.5;
    [zoom>=13] { line-width: 2.8; }
    [zoom>=14] { line-width: 3; }
    [zoom>=15] { line-width: 3.5; }
    }
  [class='primary'][zoom>=12]{
    line-color: @primary;
    line-width: 2.5;
    [zoom>=13] { line-width: 2.8; }
    [zoom>=14] { line-width: 3; }
    [zoom>=15] { line-width: 3.5; }
    }
  [zoom>=15]{
    [class='secondary'],[class='tertiary'],
      [class='street']{
      line-color: @road_outline;
      line-width: 2.5;
      }
    }
  }


#road::fill[zoom>=6]{
  [class='motorway']{
    line-color: lighten(@motorway,10);
    line-width: 0.5;
    [zoom>=10] { line-width: 1; }
    [zoom>=12] { line-width: 1.5; }
    [zoom>=13] { line-width: 1.8; }
    [zoom>=14] { line-width: 2; }
    [zoom>=15] { line-width: 2.5; }
    }
  [class='motorway_link'][zoom>=10]{
    line-color: lighten(@motorway,15);
    line-width: 0.5;
    [zoom>=14] { line-width: 1.5; }
    [zoom>=13] { line-width: 1.8; }
    }
  [class='trunk'][zoom>=8]{
    line-color: lighten(@trunk,10);
    line-width: 0.5;
    [zoom>=10] { line-width: 1; }
    [zoom>=12] { line-width: 1.5; }
    [zoom>=13] { line-width: 1.8; }
    [zoom>=14] { line-width: 2; }
    [zoom>=15] { line-width: 2.5; }
    }
  [class='primary'][zoom>=9]{
    line-color: lighten(@primary,10);
    line-width: 0.5;
    [zoom>=12] { line-width: 1; }
    [zoom>=13] { line-width: 1.5; }
    [zoom>=13] { line-width: 1.8; }
    [zoom>=14] { line-width: 2; }
    [zoom>=15] { line-width: 2.5; }
    }
  [zoom>=11]{
    [class='secondary'],[class='tertiary'],
      [class='street']{
      line-color: darken(@road,8);
      line-width: 0.5;
      [zoom>=13] { line-width: 1; }
      [zoom>=14] { line-width: 1.5; }
      [zoom>=15] { line-width: 2; line-color: @road}
      }
    }
  }