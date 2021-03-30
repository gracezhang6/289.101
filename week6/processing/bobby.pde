void setup() {
    size(1200,900)
    frameRate(10);
}

void draw() {
    translate(190,10);
    scale(1.8);
    colorMode(HSB);
    background(frameCount%90,60, 100, 150);
    colorMode(RGB);

    //eras
    stroke(0);
    fill(82, 48, 29);
    ellipse(140, 260, 30, 40);
    ellipse(330, 270, 30, 44);
    // face

    stroke(0);
    strokeWeight(10);
    fill(82, 48, 29);
    rect(150, 180, 170, 200);
    
    // glasses
    stroke(0);
    fill(255);
    rect(180, 218, 50, 32);
    rect(290, 218, 50, 32);
    stroke(0);
    strokeWeight(4);
    line(150, 235, 180, 225);

    // eyes
    int eyeX = mouseX;
    int eyeY = mouseY;
    
    if (eyeX >= 230) {
      eyeX = 230;
    } else if ( eyeX <= 180 ) {
      eyeX = 180;
    }
    
    if (eyeY >= 250) {
      eyeY = 250;
    } else if ( eyeY <= 218 ) {
      eyeY = 218;
    }
    
    
    noStroke();
    fill(0);
    ellipse(eyeX, eyeY, 20, 22);
    ellipse(eyeX + 110, eyeY, 20, 22);

    fill(255);

    ellipse(eyeX, eyeY, 4, 4);
    ellipse(eyeX + 110, eyeY, 4, 4);




    // mouse
    stroke(0);
    strokeWeight(4);
    

    if( mouseX>=290){
      line(290, 300, 255, 310);
    }else{ 
      line(255, 300, 290, 310);
      
    }


    //nose
    
    line(290, 280, 260, 280);
    stroke(0);
    strokeWeight(4);
    line(150, 235, 180, 225);

    //lid
    stroke(0);
    strokeWeight(4);
    line(190, 260, 220, 260);
    line(320, 260, 300, 260);

    //hair
    noStroke();
    //colorMode(HSB);
    fill(0);
    //colorMode(RGB);
    ellipse(215, 130, 100, 100);
    ellipse(285, 140, 100, 100);
    ellipse(175, 160, 100, 100);
    ellipse(225, 150, 100, 100);

    // freckles

    noStroke();
    fill(0);
    ellipse(315, 285, 4, 4);
    ellipse(275, 270, 3, 3);
    ellipse(300, 275, 2, 2);
    ellipse(175, 285, 2, 2);
    ellipse(225, 279, 5, 5);
    ellipse(200, 290, 3, 3);
    
    
    if(mousePressed){
      fill(48, 145, 142);
      ellipse(mouseX,mouseY,30,30);
    } else {
      fill(255,0,0);
    }
}
