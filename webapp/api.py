'''
api.py
Khizar Qureshi and Kendra Winhall
For end-to-end assignment due 9 November 2022
Flask API to support NYC language community web application.
'''
import sys
import flask
import json
import config
import psycopg2

api = flask.Blueprint('api', __name__)

def get_connection():
    ''' Returns a connection to the database described in the
        config module. May raise an exception as described in the
        documentation for psycopg2.connect. '''
    return psycopg2.connect(database=config.database,
                            user=config.user,
                            password=config.password)

@api.route('/communities/') 
def get_communities():
    ''' Returns a list of all the authors in our database. See
        get_author_by_id below for description of the author
        resource representation.

        By default, the list is presented in alphabetical order
        by surname, then given_name. You may, however, use
        the GET parameter sort to request sorting by birth year.

            http://.../authors/?sort=birth_year

        Returns an empty list if there's any database failure.
    '''
    query = '''SELECT language, world_region, country, language_family, location, community_size
               FROM languages, world_regions, countries, language_families, locations, communities
               WHERE languages.id = communities.language_id
               AND world_regions.id = communities.world_region_id
               AND countries.id = communities.country_id
               AND language_families.id = communities.language_family_id
               AND locations.id = communities.location_id
               '''  
    like_argument = ''         
    
    language_contains = flask.request.args.get('language_contains')
    if language_contains:
        like_argument = '%' + language_contains + '%'
        query += 'AND languages.language ILIKE %s' 
        query += 'ORDER BY language'
        
    world_region_contains = flask.request.args.get('world_region_contains')
    if world_region_contains:
        like_argument = '%' + world_region_contains + '%'
        query += 'AND world_regions.world_region ILIKE %s' 
        query += 'ORDER BY world_region'
    
    country_contains = flask.request.args.get('country_contains')
    if country_contains:
        like_argument = '%' + country_contains + '%'
        query += 'AND countries.country ILIKE %s' 
        query += 'ORDER BY country'
        
    language_family_contains = flask.request.args.get('language_family_contains')
    if language_family_contains:
        like_argument = '%' + language_family_contains + '%'
        query += 'AND language_families.language_family ILIKE %s' 
        query += 'ORDER BY language_family'
    
    location_contains = flask.request.args.get('location_contains')
    if location_contains:
        like_argument = '%' + location_contains + '%'
        query += 'AND locations.location ILIKE %s' 
        query += 'ORDER BY location'
        
    community_size_contains = flask.request.args.get('community_size_contains')
    if community_size_contains:
        like_argument = '%' + community_size_contains + '%'
        query += 'AND communities.community_size ILIKE %s' 
        query+= 'ORDER BY language'
        
    all_contains = flask.request.args.get('all_contains')
    if all_contains:
        like_argument = '%' + all_contains + '%'
        query += ' AND languages.language ILIKE %s'
        query += ' OR world_regions.world_region ILIKE %s' 
        query += ' OR countries.country ILIKE %s' 
        query += ' OR language_families.language_family ILIKE %s' 
        query += ' OR locations.location ILIKE %s' 
        query += ' OR communities.community_size ILIKE %s'
      
        
    print(query + like_argument)
    community_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (like_argument,))
        print(query + like_argument)
        print('HEY')
        print(cursor.query)
        for row in cursor:
            community = {'language':row[0],
                      'world_region':row[1],
                      'country':row[2],
                      'language_family':row[3],
                      'location':row[4],
                      'community_size':row[5]}
            community_list.append(community)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(community_list)


