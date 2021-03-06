USE worldA3 AS REFERENCE 31*47'18.384"/139*56'41.6034";
CREATE TRACK STRAIGHT straight1 REFERENCE $worldA3 DELTA START 400:400 END -400:400;
CREATE TRACK STRAIGHT straight2 REFERENCE $worldA3 DELTA START 400:-400 END -400:-400;
CREATE TRACK CURVE curve1 REFERENCE $worldA3 DELTA START 400:400 END 800:0 DISTANCE ORIGIN 300;
CREATE TRACK CURVE curve2 REFERENCE $worldA3 DELTA START 800:0 END 400:-400 DISTANCE ORIGIN 300;
CREATE TRACK CURVE curve3 REFERENCE $worldA3 DELTA START -800:0 END -400:400 DISTANCE ORIGIN 300;
CREATE TRACK CURVE curve4 REFERENCE $worldA3 DELTA START -400:-400 END -800:0 DISTANCE ORIGIN 300;
CREATE TRACK END deadend1 REFERENCE $worldA3 DELTA START -400:-400 END -800:-400;
CREATE TRACK LAYOUT oval__track_deadend WITH TRACKS straight1 straight2 curve1 curve2 curve3 curve4 deadend1;
COMMIT;
OPEN VIEW viewA3 ORIGIN $worldA3 WORLD WIDTH 1000 SCREEN WIDTH 800 HEIGHT 600