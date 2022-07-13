$doxydocs=
{
  classes => [
    {
      name => 'donne',
      includes => {
        local => 'no',
        name => 'map.h'
      },
      all_members => [
        {
          name => 'x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'donne'
        },
        {
          name => 'y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'donne'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'x',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'float'
          },
          {
            kind => 'variable',
            name => 'y',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'float'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'class pour stocker les cordonnees des textures de la map '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'fenetre',
      includes => {
        local => 'no',
        name => 'mafenetre.h'
      },
      all_members => [
        {
          name => 'cleanup_window',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'fenetre'
        },
        {
          name => 'draw_window',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'fenetre'
        },
        {
          name => 'getRendere',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'fenetre'
        },
        {
          name => 'init_window',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'fenetre'
        },
        {
          name => 'rendere',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'fenetre'
        },
        {
          name => 'window',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'fenetre'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'init_window',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'initialisation de la fenetre et le render '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'titre'
                        }
                      ],
                      doc => [
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'w'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'width '
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'h'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'hight '
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'titre',
                type => 'const char *'
              },
              {
                declaration_name => 'w',
                type => 'int'
              },
              {
                declaration_name => 'h',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'getRendere',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'cette fonction de type rendre a pour objectif de recupere le rendere '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'brief description il est en prive on doit faire une fonction qui le retourne pour qu\'on puisse l\'utiliser'
                },
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'SDL_Renderer* '
                    }
                  ]
                }
              ]
            },
            type => 'SDL_Renderer *',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'draw_window',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'cette procedure a pour objectif d\'afficher la fenetre et dans la dernier il y a la boucle du jeux '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'l\'affichage de la fenetre et le rendere boucle de jeux'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'render'
                        }
                      ],
                      doc => [
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'render',
                type => 'SDL_Renderer *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'cleanup_window',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'cette procedure a pour objectif de detruire en memoir tout ce qu\'il a été declarer comme windows,render... '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'window',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'declaration de la fenetre '
                }
              ]
            },
            detailed => {},
            type => 'SDL_Window *'
          },
          {
            kind => 'variable',
            name => 'rendere',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'declaration du rendre '
                }
              ]
            },
            detailed => {},
            type => 'SDL_Renderer *'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'joueur',
      includes => {
        local => 'no',
        name => 'joueur.h'
      },
      all_members => [
        {
          name => 'angle_init',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        },
        {
          name => 'apres_camera',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        },
        {
          name => 'arret',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        },
        {
          name => 'collision',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        },
        {
          name => 'draw_player',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        },
        {
          name => 'dst',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        },
        {
          name => 'g',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        },
        {
          name => 'gravite',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        },
        {
          name => 'init_joueur',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        },
        {
          name => 'monjoueur',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        },
        {
          name => 'mouvement_joueur',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        },
        {
          name => 'pi',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        },
        {
          name => 'touche',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        },
        {
          name => 'v_init',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        },
        {
          name => 'x_j',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        },
        {
          name => 'y_j',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'joueur'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'init_joueur',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'linitialisation des attribus du joueur:SDL_surface, SDL_texture, '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'render'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'pour l\'affichage '
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'render',
                type => 'SDL_Renderer *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'mouvement_joueur',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'cette procedure a pour objectif de bouger le joueur en detectant les touches utiliser par le joueur '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'render'
                        }
                      ],
                      doc => [
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'sol'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'event'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'src_monBackground'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'render',
                type => 'SDL_Renderer *'
              },
              {
                declaration_name => 'sol',
                type => 'SDL_Rect'
              },
              {
                declaration_name => 'event',
                type => 'SDL_Event'
              },
              {
                declaration_name => 'src_monBackground',
                type => 'SDL_Rect'
              }
            ]
          },
          {
            kind => 'function',
            name => 'draw_player',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'cette procedure a pour objectif à faire l\'affichage initiale du joueur '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'render'
                        }
                      ],
                      doc => [
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'render',
                type => 'SDL_Renderer *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'collision',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'cette procedure a pour objectif de detection de la collission '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'a'
                        }
                      ],
                      doc => [
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'b'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'a',
                type => 'float'
              },
              {
                declaration_name => 'b',
                type => 'float'
              }
            ]
          },
          {
            kind => 'function',
            name => 'gravite',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'cette procedure a pour objectif d\'activer la gravite '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'render'
                        }
                      ],
                      doc => [
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'render',
                type => 'SDL_Renderer *'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'x_j',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'les positions initiale du joueur '
                }
              ]
            },
            detailed => {},
            type => 'float'
          },
          {
            kind => 'variable',
            name => 'y_j',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'float'
          },
          {
            kind => 'variable',
            name => 'g',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'les variable utilise pour faire le saut du joueur '
                }
              ]
            },
            detailed => {},
            type => 'const double',
            initializer => '= 9.81'
          },
          {
            kind => 'variable',
            name => 'pi',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const double',
            initializer => '= 3.14'
          },
          {
            kind => 'variable',
            name => 'v_init',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 2'
          },
          {
            kind => 'variable',
            name => 'angle_init',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= pi/3'
          },
          {
            kind => 'variable',
            name => 'monjoueur',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'la texture dont l\'image du joueur est stocké '
                }
              ]
            },
            detailed => {},
            type => 'SDL_Texture *'
          },
          {
            kind => 'variable',
            name => 'dst',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'l\'affichage de l\'image du joueur '
                }
              ]
            },
            detailed => {},
            type => 'SDL_Rect'
          },
          {
            kind => 'variable',
            name => 'apres_camera',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'l\'affichage du joueur aprés le fonctionement du camera(scrolling du background et de la map) '
                }
              ]
            },
            detailed => {},
            type => 'SDL_Rect'
          },
          {
            kind => 'variable',
            name => 'touche',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'boolean pour activer ou desactiver la gravite '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            initializer => '=true'
          },
          {
            kind => 'variable',
            name => 'arret',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '=0'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'map',
      includes => {
        local => 'no',
        name => 'map.h'
      },
      all_members => [
        {
          name => 'background',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'map'
        },
        {
          name => 'don',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'map'
        },
        {
          name => 'draw_map',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'map'
        },
        {
          name => 'dst_monBackground',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'map'
        },
        {
          name => 'dst_sol',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'map'
        },
        {
          name => 'hight',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'map'
        },
        {
          name => 'init_map',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'map'
        },
        {
          name => 'monBackground',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'map'
        },
        {
          name => 'sol',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'map'
        },
        {
          name => 'src_monBackground',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'map'
        },
        {
          name => 'ter',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'map'
        },
        {
          name => 'width',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'map'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'init_map',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'initialisation des tableaus des images de la map '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'rendere'
                        }
                      ],
                      doc => [
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'rendere',
                type => 'SDL_Renderer *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'draw_map',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'cette procedure a pour bute d\'afficher les texture de la map dans des cordonnes précise et les stocke dans le tableaux de cordonnees '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'rendere'
                        }
                      ],
                      doc => [
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'xj'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'yj'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'rendere',
                type => 'SDL_Renderer *'
              },
              {
                declaration_name => 'xj',
                type => 'float'
              },
              {
                declaration_name => 'yj',
                type => 'float'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'don',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'creation un tableau de class pour stocker les cordonnees des textures de la map '
                }
              ]
            },
            detailed => {},
            type => 'donne',
            arguments => '[3][20]'
          },
          {
            kind => 'variable',
            name => 'ter',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'tableau pour stocker les niveaux '
                }
              ]
            },
            detailed => {},
            type => 'float',
            arguments => '[3][20]'
          },
          {
            kind => 'variable',
            name => 'sol',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'texture du sol '
                }
              ]
            },
            detailed => {},
            type => 'SDL_Texture *'
          },
          {
            kind => 'variable',
            name => 'dst_sol',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'regtangle du sol '
                }
              ]
            },
            detailed => {},
            type => 'SDL_Rect'
          },
          {
            kind => 'variable',
            name => 'background',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'surface du background '
                }
              ]
            },
            detailed => {},
            type => 'SDL_Surface *'
          },
          {
            kind => 'variable',
            name => 'monBackground',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'texture du background '
                }
              ]
            },
            detailed => {},
            type => 'SDL_Texture *'
          },
          {
            kind => 'variable',
            name => 'src_monBackground',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'rectangle de source du background '
                }
              ]
            },
            detailed => {},
            type => 'SDL_Rect'
          },
          {
            kind => 'variable',
            name => 'dst_monBackground',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'rectangle destination du background '
                }
              ]
            },
            detailed => {},
            type => 'SDL_Rect'
          },
          {
            kind => 'variable',
            name => 'width',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'pour stocker le h et w du background en temps réel '
                }
              ]
            },
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'hight',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          }
        ]
      },
      brief => {},
      detailed => {}
    }
  ],
  namespaces => [
    {
      name => 'std',
      classes => [
      ],
      namespaces => [
      ],
      brief => {},
      detailed => {}
    }
  ],
  files => [
    {
      name => 'biblio.h',
      includes => [
        {
          name => 'iostream'
        },
        {
          name => 'stdio.h'
        },
        {
          name => 'string.h'
        },
        {
          name => 'stdlib.h'
        },
        {
          name => 'math.h'
        },
        {
          name => 'SDL2/SDL.h'
        },
        {
          name => 'SDL2/SDL_image.h'
        },
        {
          name => 'SDL2/SDL_ttf.h'
        },
        {
          name => 'SDL2/SDL_mixer.h'
        },
        {
          name => 'time.h'
        },
        {
          name => 'unistd.h'
        }
      ],
      included_by => [
        {
          name => 'src/joueur.h',
          ref => 'joueur_8h'
        },
        {
          name => 'src/map.h',
          ref => 'map_8h'
        },
        {
          name => 'src/joueur.cpp',
          ref => 'joueur_8cpp'
        },
        {
          name => 'src/mafenetre.cpp',
          ref => 'mafenetre_8cpp'
        },
        {
          name => 'src/mafenetre.h',
          ref => 'mafenetre_8h'
        },
        {
          name => 'src/main.cpp',
          ref => 'main_8cpp'
        },
        {
          name => 'src/map.cpp',
          ref => 'map_8cpp'
        }
      ],
      defines => {
        members => [
          {
            kind => 'define',
            name => 'BIBLIO_h',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {}
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'joueur.cpp',
      includes => [
        {
          name => 'joueur.h',
          ref => 'joueur_8h'
        },
        {
          name => 'biblio.h',
          ref => 'biblio_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'joueur.h',
      includes => [
        {
          name => 'biblio.h',
          ref => 'biblio_8h'
        },
        {
          name => 'map.h',
          ref => 'map_8h'
        }
      ],
      included_by => [
        {
          name => 'src/joueur.cpp',
          ref => 'joueur_8cpp'
        },
        {
          name => 'src/mafenetre.cpp',
          ref => 'mafenetre_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'mafenetre.cpp',
      includes => [
        {
          name => 'biblio.h',
          ref => 'biblio_8h'
        },
        {
          name => 'mafenetre.h',
          ref => 'mafenetre_8h'
        },
        {
          name => 'joueur.h',
          ref => 'joueur_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'mafenetre.h',
      includes => [
        {
          name => 'biblio.h',
          ref => 'biblio_8h'
        }
      ],
      included_by => [
        {
          name => 'src/mafenetre.cpp',
          ref => 'mafenetre_8cpp'
        },
        {
          name => 'src/main.cpp',
          ref => 'main_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'main.cpp',
      includes => [
        {
          name => 'biblio.h',
          ref => 'biblio_8h'
        },
        {
          name => 'mafenetre.h',
          ref => 'mafenetre_8h'
        },
        {
          name => 'map.h',
          ref => 'map_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'main',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'argc',
                type => 'int'
              },
              {
                declaration_name => 'argv',
                type => 'char *',
                array => '[]'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'map.cpp',
      includes => [
        {
          name => 'biblio.h',
          ref => 'biblio_8h'
        },
        {
          name => 'map.h',
          ref => 'map_8h'
        }
      ],
      included_by => [
      ],
      variables => {
        members => [
          {
            kind => 'variable',
            name => 'lev1',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'float',
            arguments => '[3][20]',
            initializer => '={
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0},
    {1,1,1,1,0,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1}
}'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'map.h',
      includes => [
        {
          name => 'biblio.h',
          ref => 'biblio_8h'
        }
      ],
      included_by => [
        {
          name => 'src/joueur.h',
          ref => 'joueur_8h'
        },
        {
          name => 'src/main.cpp',
          ref => 'main_8cpp'
        },
        {
          name => 'src/map.cpp',
          ref => 'map_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    }
  ],
  groups => [
  ],
  pages => [
  ]
};
1;
