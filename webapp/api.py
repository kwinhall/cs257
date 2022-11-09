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
               FROM community_test'''
    
               
    community_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple())
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

