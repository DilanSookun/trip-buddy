// const directions = () => {
//   const mapElement = document.getElementById('map');
//   const accessToken = mapElement.dataset.mapboxApiKey;
//   const mbxClient = require('@mapbox/mapbox-sdk');
//   const mbxDirections = require('@mapbox/mapbox-sdk/services/directions');
//   const baseClient = mbxClient({ accessToken });
//   const directionsClient = mbxDirections(baseClient);
  
  
//   if (mapElement) {
//     const markers = JSON.parse(mapElement.dataset.markers);
//     const waypoints = markers.map((marker) => {
//       return {
//         coordinates: [
//           parseFloat(marker.lng), 
//           parseFloat(marker.lat),
//         ],
//         // approach: 'unrestricted',
//         // bearing: [100, 60],
//       }
//     })
//     directionsClient.getDirections({
//       profile: 'driving',
//       waypoints
//     })
//       .send()
//       .then(response => {
//         // console.log(response.body.waypoints)
//         const waypoints = JSON.parse(response.body);
//         console.log(waypoints)
//         initMapbox(waypoints);
//       });
//   }
// };

// const initDirections = () => {
//   const re = /\/trips\/\w+/gi
//   if (window.location.pathname.match(re)) {
//     directions()
//   }
// }

// export { initDirections };
