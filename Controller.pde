
void mousePressed(){
  if (state == DAD){
    homerSound.play();
    amp.input(homerSound);
  }
  if (state == MOM){
    margeSound.play(0);
    amp.input(margeSound);
  }
  if (state == TEENAGER){
    lisaSound.play(0);
    amp.input(lisaSound);
  }
  if (state == OTHERKID){
    maggieSound.play();
        amp.input(maggieSound);
  }
}

public void homerRedRoom(){
              if(roomColor>256){
    roomColor = 255;
        }else if (roomColor<200){
    roomColor = 200;
  }else{
    roomColor = map(amp.analyze()*16,0,1,200,255);
  }
  }

public void margeRedRoom(){
            if(roomColor>256){
    roomColor = 255;
        }else if (roomColor<200){
    roomColor = 200;
  }else{
    roomColor = map(amp.analyze()*25,0,1,200,255);
  }
}

public void lisaRedRoom(){
          if(roomColor>256){
    roomColor = 255;
        }else if (roomColor<200){
    roomColor = 200;
  }else{
    roomColor = map(amp.analyze()*4,0,1,200,255);
  }
}

public void maggieRedRoom(){
            if(roomColor>256){
    roomColor = 255;
        }else if (roomColor<200){
    roomColor = 200;
  }else{
    roomColor = map(amp.analyze()*16,0,1,200,255);
  }
}

  

public void keyTyped(){
  switch(key){
    case '1':
    state=DAD;
    break;
    case '2':
    state=MOM;
    break;
    case '3':
    state=TEENAGER;
    break;
    case '4':
    state=OTHERKID;
    break;
  }
}
