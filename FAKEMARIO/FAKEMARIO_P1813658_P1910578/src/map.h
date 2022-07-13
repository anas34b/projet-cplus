#ifndef MAP_H
#include"biblio.h"
using namespace std;
/**
 * @brief class pour stocker les cordonnees des textures de la map
 * 
 */
class donne{
    public:
    float x,y;
};

class map{
    public:
    /**
     * @brief creation un tableau de class pour stocker les cordonnees des textures de la map
     * 
     */
    donne don[3][20];

    /**
     * @brief tableau pour stocker les niveaux
     * 
     */
    float ter[3][20];

    /**
     * @brief texture du sol
     * 
     */
    SDL_Texture* sol;

    /**
     * @brief regtangle du sol
     * 
     */
    SDL_Rect dst_sol;

    /**
     * @brief initialisation des tableaus des images de la map
     * 
     * @param rendere 
     */
    void init_map(SDL_Renderer* rendere);

    /**
     * @brief surface du background
     * 
     */
    SDL_Surface* background;

    /**
     * @brief texture du background
     * 
     */
    SDL_Texture* monBackground;

    /**
     * @brief rectangle de source du background
     * 
     */
    SDL_Rect src_monBackground;

    /**
     * @brief rectangle destination du background
     * 
     */
    SDL_Rect dst_monBackground;

    /**
     * @brief pour stocker le h et w du background en temps réel
     * 
     */
    int width,hight;

    /**
     * @brief cette procedure a pour bute d'afficher les texture de la map dans des cordonnes précise
     * et les stocke dans le tableaux de cordonnees
     * 
     * @param rendere 
     * @param xj 
     * @param yj 
     */
    void draw_map(SDL_Renderer* rendere, float xj,float yj);
   
};

#endif // !MAP_H
