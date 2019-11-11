  void setup(){
  size(798, 632);
  house = loadImage("Huus.png");
  activatedCamera = loadImage("AktiveradLampa.png");
  homer = loadImage("Homer_Simpson.png");
  marge = loadImage("Marge_Simpson.png");
  lisa = loadImage("Lisa_Simpson.png");
  maggie = loadImage("Maggie_Simpson.png");
  homerSound = new SoundFile(this,"Spider pig song.mp3");
  margeSound = new SoundFile(this, "Marge Simpson Sound.mp3");
  lisaSound = new SoundFile(this,"Lisa Simpson Sound.mp3");
  maggieSound = new SoundFile(this, "Maggie Simpson Sound.mp3");
  amp = new Amplitude(this);
    s = new Server(this, 12345);
  }
  
  void draw(){
  image(house,0,0,width, height);
 
  character_x = lerp(character_x, mouseX, 0.2f);
  character_y = lerp(character_y, mouseY, 0.2f);
  homer_x = lerp(homer_x, mouseX, 0.05f);
  homer_y = lerp(homer_y, mouseY, 0.05f);
    
  
  switch( state ){
  case DAD:
    drawDad();
    break;
  case MOM:
    drawMom();
    break;
  case TEENAGER:
    drawTeenager();
    break;
  case OTHERKID:
    drawOtherKid();
    break;
    }
    
    c = s.available();
  if ( c != null ) {
    state = c.read(); 
    }
  }
  
   void drawDad(){
  image(house,0,0,width, height);
  if(homer_x>28 && homer_x<220 && homer_y>109 && homer_y<109+181){
    homerRedRoom();
    fill(roomColor, 200, 200);    
  rect(29,110,187,181);
  fill(200);
  rect(221,110,273,181);
  rect(500,110,277,181);
    image(activatedCamera,60,111);
    image(activatedCamera,260,111);
    image(activatedCamera,540,111);
    }
  
  if(homer_x>220 && homer_x<28+187+273 && homer_y>109 && homer_y <109+181){
    fill(200);
  rect(29,110,187,181);
    homerRedRoom();
    fill(roomColor, 200, 200);
  rect(221,110,273,181);
    fill(200);
  rect(500,110,277,181);
  image(activatedCamera,60,111);
  image(activatedCamera,260,111);
  image(activatedCamera,540,111);
  }

   if(homer_x>220+273 && homer_x<220+273+277 && homer_y>109 && homer_y <109+181){
    fill(200);
  rect(29,110,187,181);
  rect(221,110,273,181);
    homerRedRoom();
    fill(roomColor, 200, 200);  
    rect(500,110,277,181);
  image(activatedCamera,60,111);
  image(activatedCamera,260,111);
  image(activatedCamera,540,111);
   }
   
   if(homer_x>28 && homer_x<329 && homer_y>298 && homer_y<298+181){
    homerRedRoom();
    fill(roomColor, 200, 200);
    rect(29,298,300,163);
    fill(200);
  rect(336,298,200,163);
  rect(543,298,234,163);
  image(activatedCamera,60,299);
  image(activatedCamera,360,299);
  image(activatedCamera,570,299);
   }
  
  if(homer_x>329 && homer_x<529 && homer_y>298 && homer_y<298+181){
    fill(200);
  rect(29,298,300,163);
    homerRedRoom();
    fill(roomColor, 200, 200);
    rect(336,298,200,163);
    fill(200);
  rect(543,298,234,163);
  image(activatedCamera,60,299);
  image(activatedCamera,360,299);
  image(activatedCamera,570,299);
  }
  if(homer_x>529 && homer_x<529+234 && homer_y>298 && homer_y<298+181){
   fill(200);
  rect(29,298,300,163);
  rect(336,298,200,163);
    homerRedRoom();
    fill(roomColor, 200, 200);
    rect(543,298,234,163);
    image(activatedCamera,60,299);
  image(activatedCamera,360,299);
  image(activatedCamera,570,299);
  }
  
  if(homer_x>28 && homer_x<28+222 && homer_y>298+181 && homer_y<298+181+148){
    homerRedRoom();
    fill(roomColor, 200, 200);
    rect(29,467,222,148);
    fill(200);
  rect(256,467,160,148);
  rect(422,467, 355, 148);
  image(activatedCamera,60,468);
  image(activatedCamera,280,468);
  image(activatedCamera,470,468);
  }
  
  if(homer_x>28+222 && homer_x<28+222+160 && homer_y>298+181 && homer_y<298+181+148){
    fill(200);
  rect(29,467,222,148);
  rect(422,467, 355, 148);
    homerRedRoom();
    fill(roomColor, 200, 200);
    rect(256,467,160,148);
  image(activatedCamera,60,468);
  image(activatedCamera,280,468);
  image(activatedCamera,470,468);
  }
  
  if(homer_x>28+222+160 && homer_x<28+222+160+355 && homer_y>298+181 && homer_y<298+181+148){
    fill(200);
  rect(29,467,222,148);
  rect(256,467,160,148);
    homerRedRoom();
    fill(roomColor, 200, 200);
    rect(422,467, 355, 148);
  image(activatedCamera,60,468);
  image(activatedCamera,280,468);
  image(activatedCamera,470,468);
  }
      image(homer,homer_x-20,homer_y-50);

}
   
   void drawOtherKid(){
maggieRedRoom();
    fill(roomColor, 200, 200);
  rect(29,110,187,181);
  rect(221,110,273,181);
  rect(500,110,277,181);
  //mellanvåningen
  rect(29,298,300,163);
  rect(336,298,200,163);
  rect(543,298,234,163);
  //nedre våning
  rect(29,467,222,148);
  rect(256,467,160,148);
  rect(422,467, 355, 148);
  image(activatedCamera,60,111);
  image(activatedCamera,260,111);
  image(activatedCamera,540,111);
    image(activatedCamera,60,299);
    image(activatedCamera,360,299);
    image(activatedCamera,570,299);
      image(activatedCamera,60,468);
      image(activatedCamera,280,468);
      image(activatedCamera,470,468);
          image(maggie,character_x-20,character_y-50);
   }
  
  void drawTeenager(){
      image(house,0,0,width, height);
      fill(255);
              rect(29,467,222,148);
  rect(256,467,160,148);
  rect(422,467, 355, 148);
  lisaRedRoom();
    fill(roomColor, 200, 200);
      image(activatedCamera,60,468);
      image(activatedCamera,280,468);
      image(activatedCamera,470,468);
      
      
  if(character_x>28 && character_x<220 && character_y>109 && character_y<109+181){
  rect(29,110,187,181);
    image(activatedCamera,60,111);
  }
   if(character_x>220 && character_x<28+187+273 && character_y>109 && character_y <109+181){
  rect(221,110,273,181);
    image(activatedCamera,260,111);
  }

   if(character_x>220+273 && character_x<220+273+277 && character_y>109 && character_y <109+181){
  rect(500,110,277,181);
    image(activatedCamera,540,111);
   }
   if(character_x>28 && character_x<329 && character_y>298 && character_y<298+181){
  rect(29,298,300,163);
    image(activatedCamera,60,299);
   }
  
  if(character_x>329 && character_x<529 && character_y>298 && character_y<298+181){
  rect(336,298,200,163);
    image(activatedCamera,360,299);  
  }
  
  if(character_x>529 && character_x<529+234 && character_y>298 && character_y<298+181){
  rect(543,298,234,163);
    image(activatedCamera,570,299);
  }
 image(lisa,character_x-20,character_y-50);
}

void drawMom(){
  margeRedRoom();
    fill(roomColor, 200, 200);
  
  if(character_x>28 && character_x<220 && character_y>109 && character_y<109+181){
  rect(29,110,187,181);
  rect(221,110,273,181);
    image(activatedCamera,60,111);
    image(activatedCamera,260,111);
  }
  
  
   if(character_x>220 && character_x<28+187+273 && character_y>109 && character_y <109+181){
  rect(29,110,187,181);
  rect(221,110,273,181);
  rect(500,110,277,181);
    image(activatedCamera,60,111);
  image(activatedCamera,260,111);
  image(activatedCamera,540,111);
  }

   if(character_x>220+273 && character_x<220+273+277 && character_y>109 && character_y <109+181){
  rect(221,110,273,181);
  rect(500,110,277,181);
  image(activatedCamera,260,111);
  image(activatedCamera,540,111);
   }
   if(character_x>28 && character_x<329 && character_y>298 && character_y<298+181){
  rect(29,298,300,163);
  rect(336,298,200,163);
    image(activatedCamera,60,299);
    image(activatedCamera,360,299);
   }
  
  if(character_x>329 && character_x<529 && character_y>298 && character_y<298+181){
  rect(29,298,300,163);
  rect(336,298,200,163);
  rect(543,298,234,163);
    image(activatedCamera,60,299);
    image(activatedCamera,360,299);
    image(activatedCamera,570,299);

  
  }
  if(character_x>529 && character_x<529+234 && character_y>298 && character_y<298+181){
  rect(336,298,200,163);
  rect(543,298,234,163);
    image(activatedCamera,360,299);
    image(activatedCamera,570,299);


  }
  if(character_x>28 && character_x<28+222 && character_y>298+181 && character_y<298+181+148){
  rect(29,467,222,148);
  rect(256,467,160,148);
        image(activatedCamera,60,468);
      image(activatedCamera,280,468);

  }
  if(character_x>28+222 && character_x<28+222+160 && character_y>298+181 && character_y<298+181+148){
  rect(29,467,222,148);
  rect(422,467, 355, 148);
  rect(256,467,160,148);
        image(activatedCamera,60,468);
      image(activatedCamera,280,468);
      image(activatedCamera,470,468);

  }
  
  if(character_x>28+222+160 && character_x<28+222+160+355 && character_y>298+181 && character_y<298+181+148){
  rect(256,467,160,148);
  rect(422,467, 355, 148);
      image(activatedCamera,280,468);
      image(activatedCamera,470,468);    
  }
 image(marge,character_x-20,character_y-50);
}
