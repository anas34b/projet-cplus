#include"biblio.h"
#include"map.h"


float lev1[3][20]={
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0},
    {1,1,1,1,0,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1}
};

void map::init_map(SDL_Renderer* rendere){
    background= IMG_Load("data/map.png");
    if(!background)
            {
                cout<<"Erreur de chargement de l'background :"<<SDL_GetError()<< endl;
            }else
            {
                cout<<"background a ete bien charge hihihi "<< endl;
            }
    monBackground = SDL_CreateTextureFromSurface(rendere, background);
    SDL_QueryTexture(monBackground,NULL,NULL,&width,&hight);

     if(monBackground==NULL){
         cout<<"erreur de telechargement de monBackground"<<SDL_GetError()<< endl;

     }else{
        cout<<"telecharge avec succe de monBackground"<<SDL_GetError()<< endl;
     }

     int x,y;
SDL_Surface* solf = SDL_LoadBMP("data/sol.bmp");
            if(!solf)
            {
                cout<<"Erreur de chargement de l'solf :"<<SDL_GetError()<< endl;
            }else
            {
                cout<<"solf a ete bien charge hihi "<< endl;
            }
            sol= SDL_CreateTextureFromSurface(rendere,solf); 
            //initialisation de tableau de map
            for(x=0; x<3;x++){
            for(y=0; y<20;y++){
            ter[x][y]=0.;
        }
    }
    //initialisation du tableau de stokage de cordonne de map
    for(x=0; x<3;x++){
            for(y=0; y<20;y++){
            don[x][y].x=0;
                don[x][y].y=0;
        }
    }
    //copi du level dans notre tablea de stokage de la map
        for(x=0; x<3;x++){
            for(y=0; y<20;y++){
            ter[x][y]=lev1[x][y];
        }
    }
}

void map::draw_map(SDL_Renderer* rendere, float xj,float yj){
   src_monBackground={0,0,700,600};
   src_monBackground.x=xj-350;

                 if(src_monBackground.x<0)
                     src_monBackground.x=0;
                
                if(src_monBackground.x+src_monBackground.w>=width)
                     src_monBackground.x=width-700;

   SDL_RenderCopy(rendere,monBackground,&src_monBackground,NULL);
  
    int x, y;
    for(x=0; x<3;x++){
        for(y=0; y<20;y++){

            float sol_aff;
            sol_aff=ter[x][y];

            if(sol_aff==1){
               dst_sol.x=y*40-xj;
                    
                    if(x==1){
                        dst_sol.y=350;
                        don[x][y].y=dst_sol.y;
                    
                    }else if (x==2)
                    {
                        dst_sol.y=400;
                        don[x][y].y=dst_sol.y;
                    
                    }

                dst_sol.h=40;
                dst_sol.w=40;
                don[x][y].x=dst_sol.x;
    
            SDL_RenderCopy(rendere, sol, NULL, &dst_sol);
            }else if(sol_aff==0){
                don[x][y].x=NULL;
                don[x][y].y=NULL;
            }
        }
        }
      x=0;
      y=0;  
}