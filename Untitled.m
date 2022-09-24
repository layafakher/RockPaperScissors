clc;
clear all;
n=1;
pw=0;
cw=0;


    pause(2);
 while n<3
    fprintf('GAME NUMBER %d\n',n);
    level=questdlg('CHOOSE LEVEL','RPS','HARD','NORMAL','EASY','HARD');
    player=questdlg('CHOOSE ANY OF YOUR CHOICE','RPS','ROCK','PAPER','SCISSOR','rock');
    
   
     
    switch player
        case 'ROCK'
            play=imread('rock.png');
            subplot(121);
            imshow(play);
            title('YOU INPUT ROCK');
    end
    
      switch player
        case 'PAPER'
            play=imread('paper.png');
            subplot(121);
            imshow(play);
            title('YOU INPUT PAPER');
      end
    
      switch player
        case 'SCISSOR'
            play=imread('scissor.png');
            subplot(121);
            imshow(play);
            title('YOU INPUT SCISSOR');
      end
      pause(0.5);
      comp=randi(3);
      if comp==1
            play1=imread('rock.png');
            subplot(122);
            imshow(play1);
            title('COMPUTER CHOOSE ROCK');
      end
    
        if comp==2
            play1=imread('paper.png');
            subplot(122);
            imshow(play1);
            title('COMPUTER CHOOSE PAPER');
    end
      
        if comp==3
       
            play1=imread('scissor.png');
            subplot(122);
            imshow(play1);
            title('COMPUTER CHOOSE SCISSOR');
        end
    pause(1);
    if strcmp(player,'ROCK') && comp==2
        msgbox('COMPUTER WINS','YOU LOST','custom',play1);
        cw=cw+1;
    end
    
    if strcmp(player,'ROCK') && comp==3
        msgbox('PLAYER WINS','COMPUTER LOST','custom',play);

         pw=pw+1;
    end
    
    if strcmp(player,'ROCK') && comp==1
        msgbox('TIE');

    end
      
        
        if strcmp(player,'PAPER') && comp==1
            msgbox('PLAYER WINS','YOU WIN','custom',play);

             pw=pw+1;
        end
        
        if strcmp(player,'PAPER') && comp==3
            msgbox('COMPUTER WINS','YOU LOST','custom',play1);

        cw=cw+1;
        end
        
        if strcmp(player,'PAPER') && comp==2
            msgbox('TIE');

        end
        
        
        if strcmp(player,'SCISSOR') && comp==1
            msgbox('COMPUTER WINS','YOU LOST','custom',play1);

        cw=cw+1;
        end
        
        if strcmp(player,'SCISSOR') && comp==2
            msgbox('PLAYER WINS','COMPUTER LOST','custom',play);

            pw=pw+1;
        end
        
        if strcmp(player,'SCISSOR') && comp==3
            msgbox('TIE');

        end
      pause(5); 
      msgbox(sprintf('Computer Score = %g',cw),'cw');
      msgbox(sprintf('player Score = %g',pw),'pw');

    n=n+1;
    if (n==3)
        fprintf('GAME FINISHED');
        if cw>pw
         msgbox('COMPUTER IS CHAMPION ','YOU LOST','custom',play1);

        end
        if cw<pw
         msgbox('PLAYER IS CHAMPION','YOU WIN','custom',play);

        end
        if cw==pw
         msgbox('BOTH ARE CHAMPIONS');

        end
    end
 end