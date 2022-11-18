/*
Khizar Qureshi and Kendra Winhall
webapp.js
For Web application:first draft due 14th November 2022
*/

window.onload = initialize;


function initialize() {
    let url = getAPIBaseURL() + '/communities/';
    var search_button = document.getElementById('search_button');
    search_button.onclick = onSearchButton;
    var search_bar = document.getElementById('search_bar');
    search_bar.addEventListener('keypress', function(event) {
        if (event.key === 'Enter') {
            onSearchButton();
        }
    });
    dropDown();
    makeTable(url);
    var new_url = getAPIBaseURL() + '/communities/?all_contains=ital';
    var button = document.getElementById('world_region_sort');
    var counter = 0;
    test_url = realInOrder(new_url, button, counter);
    makeTable(test_url);
}

function onSearchButton() { 
    var dropdown = document.getElementById('dropdown');
    search_text = document.getElementById('search_bar');
    var url = getAPIBaseURL() + '/communities?all_contains=' + search_text.value;

    switch(dropdown.innerHTML) {
        case "Search All Categories":
            var url = getAPIBaseURL() + '/communities?all_contains=' + search_text.value;
            break;
        case "Search Languages":
            var url = getAPIBaseURL() + '/communities?language_contains=' + search_text.value;
            break;
        case "Search World Regions":
            var url = getAPIBaseURL() + '/communities?world_region_contains=' + search_text.value;
            break;
        case "Search Countries":
            var url = getAPIBaseURL() + '/communities?country_contains=' + search_text.value;
            break;
        case "Search Language Families":
            var url = getAPIBaseURL() + '/communities?language_family_contains=' + search_text.value;
            break;
        case "Search Locations":
            var url = getAPIBaseURL() + '/communities?location_contains=' + search_text.value;
            break;
        case "Search Community Sizes":
            var url = getAPIBaseURL() + '/communities?community_size_contains=' + search_text.value;
            break;
    }

    makeTable(url);
    return url;
}

function dropDown() {
    var language_search = document.getElementById('language_search');
    var world_region_search = document.getElementById('world_region_search');
    var country_search = document.getElementById('country_search');
    var language_family_search = document.getElementById('language_family_search');
    var location_search = document.getElementById('location_search');
    var community_size_search = document.getElementById('community_size_search');
    var all_search = document.getElementById('all_search');

    language_search.onclick = languageSearch;
    world_region_search.onclick = worldRegionSearch;
    country_search.onclick = countrySearch;
    language_family_search.onclick = languageFamilySearch;
    location_search.onclick = locationSearch;
    community_size_search.onclick = communitySizeSearch;
    all_search.onclick = allSearch;  
    
}
function sortFunction(url) {
    var language_counter = 0;
    var world_region_counter = 0;
    var country_counter = 0;
    var language_family_counter = 0;
    var location_counter = 0;
    var community_size_counter = 0;
    var language_sort_button = document.getElementById('language_sort');
    let world_region_sort_button = document.getElementById("world_region_sort");
    var country_sort_button = document.getElementById('country_sort');
    var language_family_sort_button = document.getElementById('language_family_sort');
    var location_sort_button = document.getElementById('location_sort');
    var community_size_sort_button = document.getElementById('community_size_sort'); 
    language_sort_button.onclick = inOrder(url,language_sort_button, language_counter);
    language_sort_button.onclick = language_counter++;
    world_region_sort_button.onclick = inOrder(url,world_region_sort_button, world_region_counter);
    world_region_sort_button.onclick = world_region_counter++;
    country_sort_button.onclick = inOrder(url,country_sort_button, country_counter);
    country_sort_button.onclick = country_counter++;
    language_family_sort_button.onclick = inOrder(url,language_family_sort_button,language_family_counter);
    language_family_sort_button.onclick = language_family_counter++;
    location_sort_button.onclick = inOrder(url,location_sort_button,location_counter);
    location_sort_button.onclick = location_counter++;
    community_size_sort_button.onclick = inOrder(url,community_size_sort_button,community_size_counter);
    community_size_sort_button.onclick = community_size_counter++;
}

function realInOrder(url, button, counter) {
    alert(button.id);
    if (button.id == "language_sort") {
        if (counter % 2 == 0) {
            return url + '&sort_by=language&reverse=false';
        } else {
            return url + '&sort_by=language&reverse=true';
        }
    }
    if (button.id == "world_region_sort") {
        if (counter % 2 == 0) {
            alert(url + '&sort_by=world_region&reverse=false');
            return url + '&sort_by=world_region&reverse=false';
        } else {
            return url + '&sort_by=world_region&reverse=true';
        }
    }  
    if (button.id == "country_sort") {
        if (counter % 2 == 0) {
            return url + '&sort_by=country?reverse=false';
        } else {
            return url + '&sort_by=country?reverse=true';
        }
    }  
    if (button.id == "language_family_sort") {
        if (counter % 2 == 0) {
            return url + '&sort_by=language_family?reverse=false';
        } else {
            return url + '&sort_by=language_family?reverse=true';
        }
    }  
    if (button.id == "location_sort") {
        if (counter % 2 == 0) {
            return url + '&sort_by=location?reverse=false';
        } else {
            return url + '&sort_by=location?reverse=true';
        }
    }  
    if (button.id == "community_size_sort") {
        if (counter % 2 == 0) {
            return url + '&sort_by=community_size&reverse=false';
        } else {
            return url + '&sort_by=community_size&reverse=true';
        }
    }        
}

function inOrder(url, button, counter) {
    alert(button.id);
    switch(button.id) {
        case "language_sort":
            if (counter % 2 == 0) {
                return url + '?sort_by=language?reverse=false';
            } else {
                return url + '?sort_by=language?reverse=true';
            }
        case "world_region_sort":
            alert(test2);
            if (counter % 2 == 0) {
                return url + '?sort_by=world_region?reverse=false';
            } else {
                return url + '?sort_by=world_region?reverse=true';
            }
        case "country_sort":
            if (counter % 2 == 0) {
                return url + '?sort_by=country?reverse=false';
            } else {
                return url + '?sort_by=country?reverse=true';
            }
        case "language_family_sort":
            if (counter % 2 == 0) {
                return url + '?sort_by=language_family?reverse=false';
            } else {
                return url + '?sort_by=language_family?reverse=true';
            }
        case "location_sort":
            if (counter % 2 == 0) {
                return url + '?sort_by=location?reverse=false';
            } else {
                return url + '?sort_by=location?reverse=true';
            }
        case "community_size_sort":
            if (counter % 2 == 0) {
                return url + '?sort_by=community_size?reverse=false';
            } else {
                return url + '?sort_by=community_size?reverse=true';
            }
    }
}



function languageSearch(){
    var dropdown = document.getElementById('dropdown');
    dropdown.innerHTML = "Search Languages"; 

}

function worldRegionSearch(){
    var dropdown = document.getElementById('dropdown');
    dropdown.innerHTML = "Search World Regions"; 

}

function countrySearch(){
    var dropdown = document.getElementById('dropdown');
    dropdown.innerHTML = "Search Countries"; 

}

function languageFamilySearch(){
    var dropdown = document.getElementById('dropdown');
    dropdown.innerHTML = "Search Language Families"; 

}

function locationSearch(){
    var dropdown = document.getElementById('dropdown');
    dropdown.innerHTML = "Search Locations"; 
}


function communitySizeSearch(){
    var dropdown = document.getElementById('dropdown');
    dropdown.innerHTML = "Search Community Sizes"; 

}

function allSearch(){
    var dropdown = document.getElementById('dropdown');
    dropdown.innerHTML = "Search All Categories"; 

}

// Returns the base URL of the API, onto which endpoint
// components can be appended.
function getAPIBaseURL() {
    let baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

function makeTable(url) { 
    // Send the request to the books API /authors/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    
    .then((response) => response.json())

    .then(function(communities) {
        let tableBody = ''
        for (let k = 1; k <= communities.length; k++) {
            let community = communities[k-1];
            tableBody += '<tr><th scope="row">' + k + '</th>' + 
                        '<td>' + community['language'] + '</td>' + 
                         '<td>' + community['world_region'] + '</td>' + 
                         '<td>' + community['country'] + '</td>' + 
                         '<td>' + community['language_family'] + '</td>' + 
                         '<td>' + community['location'] + '</td>' +
                         '<td>' + community['community_size'] + '</td>' +
                         '</tr>\n';
        }
       
        let table = document.getElementById('results_table');
        if (table) {
            table.innerHTML = tableBody;
        }
    })


    // Once you have your list of communities dictionaries, use it to build
    // an HTML table displaying the communities .
    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
    
}
