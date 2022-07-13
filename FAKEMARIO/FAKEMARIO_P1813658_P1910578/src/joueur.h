#ifndef JOUEUR_H
#include"biblio.h"
#include"map.h"
using namespace std;

class joueur{
    public:/**
     * @brief les positions initiale du joueur
     * 
     */
    float x_j, y_j;

    /**
     * @brief les variable utilise pour faire le saut du joueur
     * 
     */
    const double g = 9.81;
    const double pi = 3.14;
    int v_init = 2;
    int angle_init = pi/3;

    /**
     * @brief le boolean qui detecte le fullscreen
     * 
     */
    bool MaxEcran = false;

    /**
     * @brief les textures et les Surface dont les images du joueur sont stockées
     * 
     */
    SDL_Texture* monjoueur;
    SDL_Texture* joueur2;
    SDL_Surface* ijoueur;
    SDL_Surface* ijoueur2;

    /**
     * @brief l'affichage de l'image du joueur
     * 
     */
    SDL_Rect dst;

    /**
     * @brief l'affichage du joueur aprés le fonctionement du camera(scrolling du background et de la map)
     * 
     */
    SDL_Rect apres_camera;

    /**
     * @brief boolean pour activer ou desactiver la gravite
     * 
     */
    bool touche=true;
    int arret=0;

    /**
     * @brief linitialisation des attribus du joueur:SDL_surface, SDL_texture,
     * 
     * @param render pour l'affichage
     */
    void init_joueur(SDL_Renderer* render);

    /**
     * @brief cette procedure a pour objectif de bouger le joueur en detectant les touches utiliser par le joueur
     * 
     * @param render 
     * @param sol 
     * @param event 
     * @param src_monBackground 
     */
    void mouvement_joueur(SDL_Renderer* render,SDL_Rect sol,SDL_Event event,SDL_Window* window);

    /**
     * @brief cette procedure a pour objectif à faire l'affichage initiale du joueur
     * 
     * @param render 
     */
    void draw_player(SDL_Renderer* render);
    
    /**
     * @brief cette procedure a pour objectif de detection de la collission
     * 
     * @param a 
     * @param b 
     */
    void collision(float a, float b );

    /**
     * @brief cette procedure a pour objectif d'activer la gravite
     * 
     * @param render 
     */
    void gravite(SDL_Renderer* render);
};
#endif // !JOUEUR_H
