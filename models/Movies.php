<?php

class Movies extends Model
{
    public function __construct($data)
    {
 
    }

    static public function getFeatured()
    {
        // 1. Effectuer la requête en base de données
        $result=static::fetch(
            'SELECT m.id,m.title,m.description,m.featured_img,m.released_at,m.trailer_url,m.slug FROM movies AS m
        JOIN publics p ON p.id=m.public_id
        LEFT JOIN (SELECT movie_id,AVG(rating) AS rating FROM reviews GROUP BY movie_id) AS r ON r.movie_id= m.id
        Where featured=1 AND (m.published_until IS NULL OR m.published_until>NOW()) ORDER BY m.released_at LIMIT 1'); 
        
        $producers['producers']=static::fetchAll('SELECT 
        p.firstname,
        p.slug,
        p.lastname 
        FROM producers AS p
        JOIN movie_producer AS mp ON p.id=mp.movie_id
        WHERE mp.movie_id=:id;',['id'=>$result['id']]);
        // 2. Créer une instance pour le résultat récupéré     
        $result= new Movie($result);
        // 3. Retourner toutes ces instances ainsi créées
        return $result;

    }
}