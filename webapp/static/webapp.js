/*
Khizar Qureshi and Kendra Winhall
mockup1.css
For end-to-end assignment due 9 November 2022
*/

window.onload = initialize;


function initialize() {
    let url = getAPIBaseURL() + '/communities/';
    var search_button = document.getElementById('search_button');
    search_button.onclick = onSearchButton;
    dropDown();
    makeTable(url);

   
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


    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
    
}