USE worldB1 AS REFERENCE 31*47'18.384"/139*56'41.6034";

CREATE TRACK STRAIGHT straight1 REFERENCE $worldB1 DELTA START 400:400 END -400:400;
CREATE TRACK STRAIGHT straight2 REFERENCE $worldB1 DELTA START 400:-400 END -400:-400;
CREATE TRACK CURVE curve1 REFERENCE $worldB1 DELTA START 400:400 END 800:0 DISTANCE ORIGIN 300;
CREATE TRACK CURVE curve2 REFERENCE $worldB1 DELTA START 800:0 END 400:-400 DISTANCE ORIGIN 300;
CREATE TRACK CURVE curve3 REFERENCE $worldB1 DELTA START -800:0 END -400:400 DISTANCE ORIGIN 300;
CREATE TRACK CURVE curve4 REFERENCE $worldB1 DELTA START -400:-400 END -800:0 DISTANCE ORIGIN 300;

CREATE TRACK LAYOUT oval_track WITH TRACKS straight1 straight2 curve1 curve2 curve3 curve4;

CREATE POWER POLE power1 ON TRACK straight1 DISTANCE 200 FROM END;
CREATE POWER POLE power2 ON TRACK curve3 DISTANCE 200 FROM END;
CREATE POWER POLE power3 ON TRACK curve4 DISTANCE 200 FROM START;
CREATE POWER POLE power4 ON TRACK straight2 DISTANCE 200 FROM END;

CREATE POWER POLE power5 ON TRACK straight1 DISTANCE 200 FROM START;
CREATE POWER POLE power6 ON TRACK curve1 DISTANCE 200 FROM START;
CREATE POWER POLE power7 ON TRACK curve2 DISTANCE 200 FROM END;
CREATE POWER POLE power8 ON TRACK straight2 DISTANCE 200 FROM START;

CREATE POWER CATENARY catenary1 WITH POLES power1 power2 power3 power4;
CREATE POWER CATENARY catenary2 WITH POLES power5 power6 power7 power8;

CREATE POWER SUBSTATION substation1 REFERENCE $worldB1 DELTA -400:0 WITH CATENARIES catenary1;
CREATE POWER SUBSTATION substation2 REFERENCE $worldB1 DELTA 400:0 WITH CATENARIES catenary2;

CREATE POWER STATION station1 REFERENCE $worldB1 DELTA 0:0 WITH SUBSTATIONS substation1 substation2;

COMMIT;
OPEN VIEW viewB1 ORIGIN $worldB1 WORLD WIDTH 1000 SCREEN WIDTH 800 HEIGHT 600;