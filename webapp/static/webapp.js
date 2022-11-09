/*
Khizar Qureshi and Kendra Winhall
mockup1.css
For end-to-end assignment due 9 November 2022
*/

window.onload = initialize;

function initialize() {
    var button = document.getElementById('data_button');
    button.onclick = onButtonPress;
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


function onButtonPress() {
    let url = getAPIBaseURL() + '/communities/';


    // Send the request to the books API /authors/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    .then(function(communities) {
        let selectorBody = ''
        for (let k = 0; k < communities.length; k++) {
            let community = communities[k];
            selectorBody += community['language'] + community['world_region'] + community['country'] + community['language_family'] + community['location'] + community['community_size'];
        }

        

        let selector = document.getElementById('table');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })


    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}


