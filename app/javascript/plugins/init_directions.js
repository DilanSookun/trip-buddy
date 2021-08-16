const directions = () => {
  const accessToken = 'pk.eyJ1IjoiZGlsYW4xOSIsImEiOiJja3M4bzJrMWMwaTkzMndwZjA5ZXd2bmcxIn0.OLh3PNzA50CF5Yb4dpg_uA'
  const mbxClient = require('@mapbox/mapbox-sdk');
  const mbxDirections = require('@mapbox/mapbox-sdk/services/directions');

  const baseClient = mbxClient({ accessToken });
  const directionsClient = mbxDirections(baseClient);

  const mapElement = document.getElementById('map');
  if (mapElement) {
    const markers = JSON.parse(mapElement.dataset.markers);
    const waypoints = markers.map((marker) => {
      return {
        coordinates: [
          parseFloat(marker.lng), 
          parseFloat(marker.lat),
        ],
        // approach: 'unrestricted',
        // bearing: [100, 60],
      }
    })
    directionsClient.getDirections({
      profile: 'driving-traffic',
      waypoints
    })
      .send()
      .then(response => {
        const directions = response.body;
        console.log(directions)
      });
    console.log(waypoints)
  }

};

const initDirections = () => {
  const re = /\/trips\/\w+/gi
  if (window.location.pathname.match(re)) {
    directions()
  }
}

export { initDirections };
