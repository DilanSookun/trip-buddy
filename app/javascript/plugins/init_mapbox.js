import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initDirections } from './init_directions';

const initMapbox = () => {
//   // initDirections()
//   // console.log(waypoints);

//   const fitMapTowaypoints = (map, waypoints) => {
//     const bounds = new mapboxgl.LngLatBounds();
//     waypoints.forEach(waypoints => bounds.extend([ waypoints.lng, waypoints.lat ]));
//     map.fitBounds(bounds, { padding: 0, maxZoom: 10, duration: 0 });
//   };

  // // const fitMapToMarkers = (map, markers) => {
  //   const bounds = new mapboxgl.LngLatBounds();
  // //   markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  //   map.fitBounds(bounds, { padding: 0, maxZoom: 10, duration: 0 });
  // // };
  
//   const mapElement = document.getElementById('map');

//   if (mapElement) { // only build a map if there's a div#map to inject into
//     mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
//     const map = new mapboxgl.Map({
//       container: 'map',
//       style: 'mapbox://styles/mapbox/streets-v10'
//     });

//     const waypoints = JSON.parse(mapElement.dataset.markers);
//     waypoints.forEach((waypoint) => {
//       const popup = new mapboxgl.Popup().setHTML(waypoint.info_window);
//       new mapboxgl.Marker()
//         .setLngLat([ waypoint.lng, waypoint.lat ])
//         .setPopup(popup)
//         .addTo(map);
//       });


//     // const markers = JSON.parse(mapElement.dataset.markers);
//     // markers.forEach((marker) => {
//     //   const popup = new mapboxgl.Popup().setHTML(marker.info_window);
//     //   new mapboxgl.Marker()
//     //     .setLngLat([ marker.lng, marker.lat ])
//     //     .setPopup(popup)
//     //     .addTo(map);
//     //   });

    
//     fitMapTowaypoints(map, waypoints);
//     // fitMapToMarkers(map, markers);
    

//     map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
//       mapboxgl: mapboxgl }));

//     map.addControl(
//       new mapboxgl.GeolocateControl({
//       positionOptions: {
//       enableHighAccuracy: true
//       },
//       // When active the map will receive updates to the device's location as it changes.
//       trackUserLocation: true,
//       // Draw an arrow next to the location dot to indicate which direction the device is heading.
//       showUserHeading: true
//       })
//     );
//    }

const mapElement = document.getElementById('map');






// START
const markers = JSON.parse(mapElement.dataset.markers);
mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

var map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/streets-v10',
  center: [ markers[0].lng, markers[0].lat], // starting position
  zoom: 12
});
// set the bounds of the map
var bounds = [[54.5606, -21.1963], [ 60.9866, -18.1963]];
map.setMaxBounds(bounds);

// initialize the map canvas to interact with later
var canvas = map.getCanvasContainer();
let pointercoords = {}
let x = 0
markers.forEach((pointer) => {
  const popup = new mapboxgl.Popup().setHTML(pointer.info_window);
  new mapboxgl.Marker()
    .setLngLat([ pointer.lng, pointer.lat ])
    .setPopup(popup)
    .addTo(map);
    pointercoords[x] = [pointer.lng, pointer.lat];
    x += 1
  });
// an arbitrary start will always be the same
    // only the end or destination will change
    var start = [pointercoords[0][0], pointercoords[0][1]];
    // create a function to make a directions request
function getRoute(end) {
  // make a directions request using cycling profile
  // an arbitrary start will always be the same
  // only the end or destination will change
  var start = [pointercoords[0][0], pointercoords[0][1]];
  var url = 'https://api.mapbox.com/directions/v5/mapbox/driving/' + start[0] + ',' + start[1] + ';' + end[0] + ',' + end[1] + '?steps=false&geometries=geojson&access_token=' + mapboxgl.accessToken;

  // make an XHR request https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest
  var req = new XMLHttpRequest();
  req.open('GET', url, true);
  req.onload = function() {
    var json = JSON.parse(req.response);
    var data = json.routes[0];
    var route = data.geometry.coordinates;
    var geojson = {
      type: 'Feature',
      properties: {},
      geometry: {
        type: 'LineString',
        coordinates: route
      }
    };
    // if the route already exists on the map, reset it using setData
    if (map.getSource('route')) {
      map.getSource('route').setData(geojson);
    } else { // otherwise, make a new request
      map.addLayer({
        id: 'route',
        type: 'line',
        source: {
          type: 'geojson',
          data: {
            type: 'Feature',
            properties: {},
            geometry: {
              type: 'LineString',
              coordinates: geojson
            }
          }
        },
        layout: {
          'line-join': 'round',
          'line-cap': 'round'
        },
        paint: {
          'line-color': '#3887be',
          'line-width': 5,
          'line-opacity': 0.75
        }
      });
    }
    // add turn instructions here at the end
  };
  req.send();
}

map.on('load', function() {
  // make an initial directions request that
  // starts and ends at the same location
  getRoute(start);

  // Add starting point to the map
  map.addLayer({
    id: 'point',
    type: 'circle',
    source: {
      type: 'geojson',
      data: {
        type: 'FeatureCollection',
        features: [{
          type: 'Feature',
          properties: {},
          geometry: {
            type: 'Point',
            coordinates: start
          }
        }
        ]
      }
    },
    paint: {
      'circle-radius': 10,
      'circle-color': '#3887be'
    }
  });

const xyz = (coordsObj) => {


    canvas.style.cursor = '';
    var coords = Object.keys(coordsObj).map(function(key) {
      return coordsObj[key];
    });
    var end = {
      type: 'FeatureCollection',
      features: [{
        type: 'Feature',
        properties: {},
        geometry: {
          type: 'Point',
          coordinates: coords
        }
      }
      ]
    };
    if (map.getLayer('end')) {
      map.getSource('end').setData(end);
    } else {
      map.addLayer({
        id: 'end',
        type: 'circle',
        source: {
          type: 'geojson',
          data: {
            type: 'FeatureCollection',
            features: [{
              type: 'Feature',
              properties: {},
              geometry: {
                type: 'Point',
                coordinates: coords
              }
            }]
          }
        },
        paint: {
          'circle-radius': 10,
          'circle-color': '#f30'
        }
      });
    }
    getRoute(coords);
    
    map.addControl(
      new mapboxgl.GeolocateControl({
      positionOptions: {
      enableHighAccuracy: true
      },
      // When active the map will receive updates to the device's location as it changes.
      trackUserLocation: true,
      // Draw an arrow next to the location dot to indicate which direction the device is heading.
      showUserHeading: true,
      showUserLocation: true
    })
    );
  }

  // xyz({
  //   lat: pointercoords[1][0],
  //   lng: pointercoords[1][1]
  // })
  // xyz({
  //   lat: pointercoords[2][0],
  //   lng: pointercoords[2][1]
  // })
});

//     // END

};


export { initMapbox };
