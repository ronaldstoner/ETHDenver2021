//import 'ol/ol.css';
import Map from 'ol/Map';
import OSM, {ATTRIBUTION} from 'ol/source/OSM';
import TileLayer from 'ol/layer/Tile';
import View from 'ol/View';

var openCycleMapLayer = new TileLayer({
  source: new OSM({
    attributions: [
      'All maps © <a href="https://www.opencyclemap.org/">OpenCycleMap</a>',
      ATTRIBUTION ],
    url:
      'https://{a-c}.tile.thunderforest.com/cycle/{z}/{x}/{y}.png' +
      '?apikey=7efafa0ff7c14e28978aaf4fbca8e2bf',
  }),
});

var openSeaMapLayer = new TileLayer({
  source: new OSM({
    attributions: [
      'All maps © <a href="http://www.openseamap.org/">OpenSeaMap</a>',
      ATTRIBUTION ],
    opaque: false,
    url: 'https://tiles.openseamap.org/seamark/{z}/{x}/{y}.png',
  }),
});

var map = new Map({
  layers: [openCycleMapLayer, openSeaMapLayer],
  target: 'map',
  view: new View({
    maxZoom: 18,
    center: [-244780.24508882355, 5986452.183179816],
    zoom: 15,
  }),
});