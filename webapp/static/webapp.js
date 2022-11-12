/*
Khizar Qureshi and Kendra Winhall
mockup1.css
For end-to-end assignment due 9 November 2022
*/

window.onload = initialize;


function initialize() {
    let url = getAPIBaseURL() + '/communities/';
    var search_button = document.getElementById('search_button');
    search_button.onclick=onSearchButton;


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

function onSearchButton() { 
    var search_text = document.getElementById('search_text');
    let url = getAPIBaseURL() + '/communities?language_contains=' + search_text;
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
