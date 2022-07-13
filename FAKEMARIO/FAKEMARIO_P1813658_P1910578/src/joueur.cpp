#include"joueur.h"

#include"biblio.h"

void joueur::init_joueur(SDL_Renderer* render){
    ijoueur=SDL_LoadBMP("data/image.bmp"); 
    if(!ijoueur)
            {
                cout<<"Erreur de chargement de l'ijoueur :"<<SDL_GetError()<< endl;
            }else
            {
                cout<<"ijoueur a ete bien charge hihihi "<< endl;
            }
    monjoueur = SDL_CreateTextureFromSurface(render, ijoueur);

     if(monjoueur==NULL){
         cout<<"erreur de telechargement de monjoueur"<<SDL_GetError()<< endl;

     }else{
        cout<<"telecharge avec succe de monjoueur"<<SDL_GetError()<< endl;
     }
    ijoueur2=IMG_Load("data/mario3.png");
    joueur2=SDL_CreateTextureFromSurface(render, ijoueur2);
}



void joueur::draw_player(SDL_Renderer* render){
    dst.x=20;
    dst.y=50;
    dst.h=50;
    dst.w=50;
    
    SDL_RenderCopy(render, monjoueur, NULL, &dst);
}
void joueur::mouvement_joueur(SDL_Renderer* render,SDL_Rect sol ,SDL_Event event,SDL_Window* window){
     
if(event.type == SDL_KEYDOWN)
        {
            cout<<"position x = "<< dst.x<< endl;
            cout<<"position y = "<< dst.y<< endl;
            if(event.key.keysym.sym == SDLK_RIGHT)
            {
                cout<<"RIGHT"<< endl;
               
                    dst.x=dst.x+10;
                    monjoueur = SDL_CreateTextureFromSurface(render,ijoueur );
            }

             if(event.key.keysym.sym == SDLK_LEFT)
            {
                if(dst.x-10 <= -5 ){
                    cout<<"collision avec la fentre de gauche"<< endl;
                }else{
                     dst.x=dst.x-10;
                     monjoueur = SDL_CreateTextureFromSurface(render,ijoueur2);
                }
                
            }   

            if(event.key.keysym.sym == SDLK_SPACE)
            {
                dst.x=dst.x+cos(angle_init)*v_init+20;
                dst.y=dst.y-sin(angle_init)*v_init-50;
            }
            if(event.key.keysym.sym == SDLK_f){
                MaxEcran = !MaxEcran;
                if(MaxEcran){
                    SDL_SetWindowFullscreen(window, SDL_WINDOW_FULLSCREEN);
                }
                else{
                    SDL_SetWindowFullscreen(window, 0);
                }
                
        }
}
}


void joueur::collision(float a, float b ){
    if(a==NULL || b==NULL){
        touche=true;
    }
    else {
    if
        (
        dst.x + (dst.w/2) > a &&
		dst.x + (dst.h/2) < a + 40 &&
		dst.y + (dst.h/2) > b && 
        dst.y + (dst.w/2) < b * 40 
    ){
        touche=false;
        
        dst.y=b-60;
        apres_camera.y=dst.y+10;
        }
    }  
}

void joueur::gravite(SDL_Renderer* render){
    float f=1;
    if(touche)
    {
        dst.y=dst.y+f;  
        if(dst.y==550){
            dst.y--;
        }        
    }  
}
    
    

