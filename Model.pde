import processing.sound.*;
import processing.net.*;

Server s; 
Client c;

  final int DAD = 1, MOM = 2, TEENAGER = 3, OTHERKID = 4;
  int state = DAD;
  PImage house, activatedCamera, homer, marge, lisa, maggie;
  SoundFile homerSound;
  SoundFile margeSound;
  SoundFile lisaSound;
  SoundFile maggieSound;
  Amplitude amp;
  float roomColor;
  float character_x, character_y, homer_x, homer_y; 
  
