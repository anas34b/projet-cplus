//#define MAFENETRE_H
#ifndef MAFENETRE_H
#include"biblio.h"

class fenetre{
    public:

    
   /**
    * @brief initialisation de la fenetre et le render
    * 
    * @param titre 
    * @param w width
    * @param h hight
    */
    void init_window(const char* titre, int w, int h);
    /**
     * @brief cette fonction de type rendre a pour objectif de recupere le rendere
     * 
     * @return SDL_Renderer* 
     */
    SDL_Renderer* getRendere();
    /**
     * @brief cette procedure a pour objectif d'afficher la fenetre et dans la dernier il y a la boucle du jeux 
     * 
     * @param render 
     */
    void draw_window(SDL_Renderer* render);
    /**
     * @brief cette procedure a pour objectif de detruire en memoir tout ce qu'il a été declarer comme windows,render...
     * 
     */
    void cleanup_window();
    

    private:
    /**
     * @brief declaration de la fenetre
     * 
     */
    SDL_Window* window;
    /**
     * @brief declaration du rendre
     * 
     */
    SDL_Renderer* rendere;
    
};



#endif //MAFENETRE_H