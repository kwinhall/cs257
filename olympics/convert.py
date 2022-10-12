'''
convert.py
Kendra Winhall, 11 Oct 2022
Adapted from Jeff Ondich's olympics-convert.py
For use in the "olympics" assignment in
Carleton's CS 257 Software Design class

Download source data (athlete_events.csv and noc_regions.csv) from Kaggle at 
https://www.kaggle.com/datasets/heesoo37/120-years-of-olympic-history-athletes-and-results
'''

import csv

nocs = {}
with open('noc_regions.csv') as original_data_file,\
        open('nocs.csv', 'w') as nocs_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(nocs_file)
    heading_row = next(reader) #ignores heading row of original data file
    for row in reader:
        #original data uses 'SIN' (outdated) as Singapore's NOC abbreviation, but it's 'SGP' now
        if row[0] == 'SIN':
            noc_name = 'SGP'
        else:
            noc_name = row[0]
        if row[2] == "":
            region_name = row[1]
        else: #if a region has additional notes, adds notes to region name 
            region_name = row[1] + " (" + row[2] + ")"
        if noc_name not in nocs:
            noc_id = len(nocs) + 1
            nocs[(noc_name, region_name)] = noc_id
            writer.writerow([noc_id, noc_name, region_name])

athletes = {}
sports = {}
events = {}
games = {}

with open('athlete_events.csv') as original_data_file,\
        open('athletes.csv', 'w') as athletes_file,\
        open('sports.csv', 'w') as sports_file,\
        open('events.csv', 'w') as events_file,\
        open('games.csv', 'w') as games_file,\
        open('results.csv', 'w') as results_file:

    reader = csv.reader(original_data_file)
    athletes_writer = csv.writer(athletes_file)
    sports_writer = csv.writer(sports_file)
    events_writer = csv.writer(events_file)
    games_writer = csv.writer(games_file)
    results_writer = csv.writer(results_file)

    heading_row = next(reader) #ignores heading row of original data file
    for row in reader:
        athlete_id = row[0]
        athlete_name = row[1]
        noc_name = row[7]
        for key in nocs.keys():
            if key[0] == noc_name:
                region_name = key[1]
                break
        year = row[9]
        season = row[10]
        city = row [11]
        sport_name = row[12]
        event_name = row[13]
        medal = row[14]

        if athlete_id not in athletes:
            athletes[athlete_id] = athlete_name
            athletes_writer.writerow([athlete_id, athlete_name])

        if sport_name not in sports:
            sport_id = len(sports) + 1
            sports[sport_name] = sport_id
            sports_writer.writerow([sport_id, sport_name])

        sport_id = sports[sport_name]
        if (sport_id, event_name) not in events:
            event_id = len(events) + 1
            events[(sport_id, event_name)] = event_id
            events_writer.writerow([event_id, sport_id, event_name])

        if (year, season, city) not in games:
            game_id = len(games) + 1
            games[(year, season, city)] = game_id
            games_writer.writerow([game_id, year, season, city])

        noc_id = nocs[(noc_name, region_name)]
        event_id = events[(sport_id, event_name)]
        game_id = games[(year, season, city)]
        results_writer.writerow([athlete_id, noc_id, sport_id, event_id, game_id, medal])
        