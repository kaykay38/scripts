USE world4 AS REFERENCE 31*47'18.384"/139*56'41.6034";CREATE TRACK STRAIGHT str1 REFERENCE $world4 DELTA START 200:200 END -200:200;CREATE TRACK STRAIGHT str2 REFERENCE $world4 DELTA START 200:-200 END -180:-200;CREATE TRACK CURVE cur1 REFERENCE $world4 DELTA START 200:200 END 400:0 DISTANCE ORIGIN 150;CREATE TRACK CURVE cur2 REFERENCE $world4 DELTA START 400:0 END 200:-200 DISTANCE ORIGIN 150;CREATE TRACK CURVE cur3 REFERENCE $world4 DELTA START -400:0 END -200:200 DISTANCE ORIGIN 150;CREATE TRACK CURVE cur4 REFERENCE $world4 DELTA START -200:-200 END -400:0 DISTANCE ORIGIN 150;CREATE TRACK STRAIGHT str3 REFERENCE $world4 DELTA START -170:-230 END -115:-350;CREATE TRACK SWITCH TURNOUT turn1 REFERENCE $world4 STRAIGHT DELTA START -178:-200 END -200:-200 CURVE DELTA START -200:-200 END -170:-230 DISTANCE ORIGIN 50;CREATE TRACK ROUNDHOUSE round1 REFERENCE $world4 DELTA ORIGIN -105:-370 ANGLE ENTRY 335 START 60 END 240 WITH 3 SPURS LENGTH 15 TURNTABLE LENGTH 15;CREATE TRACK LAYOUT track1 WITH TRACKS str1 str2 cur1 cur2 cur3 cur4 turn1 str3 round1;COMMIT;OPEN VIEW view1 ORIGIN $world4 WORLD WIDTH 1000 SCREEN WIDTH 1920 HEIGHT 108

