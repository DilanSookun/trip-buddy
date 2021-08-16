const accessToken = 'pk.eyJ1IjoiZGlsYW4xOSIsImEiOiJja3M4bzJrMWMwaTkzMndwZjA5ZXd2bmcxIn0.OLh3PNzA50CF5Yb4dpg_uA'
console.log(accessToken)
const mbxClient = require('@mapbox/mapbox-sdk');
const mbxDirections = require('@mapbox/mapbox-sdk/services/directions');

const baseClient = mbxClient({ accessToken });
const directionsClient = mbxDirections(baseClient);

const initDirections = () => {

  directionsClient.getDirections({
    profile: 'driving-traffic',
    waypoints: [
      {
        coordinates: [13.4301, 52.5109],
        approach: 'unrestricted'
      },
      {
        coordinates: [13.4265, 52.508]
      },
      {
        coordinates: [13.4194, 52.5072],
        bearing: [100, 60]
      }
    ]
  })
    .send()
    .then(response => {
      const directions = response.body;
      console.log(directions)
    });
};

export { initDirections };
