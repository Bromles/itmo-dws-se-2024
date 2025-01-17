# @yandex/ymaps3-default-ui-theme package

---

Yandex JS API package

[![npm version](https://badge.fury.io/js/%40yandex%2Fymaps3-default-ui-theme.svg)](https://badge.fury.io/js/%40yandex%2Fymaps3-default-ui-theme)
[![npm](https://img.shields.io/npm/dm/@yandex/ymaps3-default-ui-theme.svg)](https://www.npmjs.com/package/@yandex/ymaps3-default-ui-theme)
[![Build Status](https://github.com/yandex/ymaps3-default-ui-theme/workflows/Run%20tests/badge.svg)](https://github.com/yandex/@yandex/ymaps3-default-ui-theme/actions/workflows/tests.yml)

## How use

The package is located in the `dist` folder:

- `dist/types` TypeScript types
- `dist/esm` es6 modules for direct connection in your project
- `dist/index.js` Yandex JS Module

Recommended use `@yandex/ymaps3-default-ui-theme` as usual npm package.

### Usage with npm

Install `@yandex/ymaps3-default-ui-theme` package from npm:

```sh
npm install @yandex/ymaps3-default-ui-theme
```

The JS API is loaded dynamically, so the package must be used after the main JS API has loaded:

```js
await ymaps3.ready; // waiting for the main JS API to load.

// ...

const {YMapDefaultMarker} = await import('@yandex/ymaps3-default-ui-theme');

// ...

map.addChild(new YMapDefaultMarker(props));
```

You also need to import css styles into your project:

```css
/* index.css */
@import '@yandex/ymaps3-default-ui-theme/dist/esm/index.css';
```

### Usage without npm

You can use CDN with module loading handler in JS API on your page.

By default `ymaps3.import` can load self modules.
Just use `ymaps3.registerCdn` and `ymaps3.import`:

```js
// register in `ymaps3.import` which CDN to take the package from
ymaps3.import.registerCdn('https://cdn.jsdelivr.net/npm/{package}', '@yandex/ymaps3-default-ui-theme@latest');

// ...

// import package from CDN
const pkg = await ymaps3.import('@yandex/ymaps3-default-ui-theme');
```

## Working with the package

This package contains a range of pre-designed user interface elements for your map.
This guide will provide you with detailed instructions on how to incorporate these
elements into your map and customize them to suit your specific requirements.
Live examples of how they can be used, along with links to the relevant code, will also be provided.

### Controls

This section presents all UI components that belong to the category of controls.
These include simple zoom and tilt controls, as well as more advanced controls such as the search control.

#### Simple controls

This type of controls includes the following:

- `YMapGeolocationControl` – Display geolocation control on a map
- `YMapZoomControl` – Display zoom control on a map
- `YMapRotateControl` – Display rotate control on a map
- `YMapTiltControl` – Display tilt control on a map
- `YMapRotateTiltControl` – Display rotate and tilt in one control

The `YMapZoomControl`, `YMapRotateControl`, `YMapTiltControl`, `YMapRotateTiltControl` controls have the same props:

| Props name | Description                                           |
| ---------- | ----------------------------------------------------- |
| easing     | Easing function for map location animation (optional) |
| duration   | Map location animate duration (optional)              |

The parameters for the `YMapGeolocationControl` are slightly different:

| Props name          | Description                                |
| ------------------- | ------------------------------------------ |
| onGeolocatePosition | Geolocation request callback               |
| source              | Data source id for geolocation placemark   |
| easing              | Easing function for map location animation |
| duration            | Map location animate duration              |

#### Rich controls

More comprehensive controls include the following classes:

##### YMapSearchControl

`YMapSearchControl` – adds a control to the map in the form of a search bar.
It also has built-in suggest hints when entering the name of a place or organization.

`YMapSearchControl` has the following parameters:

| Props name   | Description                                                                         |
| ------------ | ----------------------------------------------------------------------------------- |
| search       | A function that overrides the search function. By default, `ymaps3.search` is used. |
| suggest      | A function that overrides the hint function. By default, `ymaps3.suggest` is used   |
| searchResult | The callback that receives the search results.                                      |

`YMapSearchControl` does not display markers on the map, it only returns coordinates and location parameters,
the developer is responsible for displaying them on the map.

##### YMapRouteControl

`YMapRouteControl` – adds a control to the map in the form of a route panel.
There are also built-in suggest hint when entering the name of a place, panel control buttons
and the ability to specify a waypoint with a click on the map.

`YMapRouteControl` has the following parameters:

| Props name            | Description                                                                                                                      |
| --------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| geolocationTextInput  | Text that will be displayed in the input field when the user's geolocation is selected.                                          |
| clearFieldsText       | Text of the route reset button.                                                                                                  |
| changeOrderText       | The text of the route change order button.                                                                                       |
| availableTypes        | Array of available route types in the routing panel (`driving`, `transit`, `truck`, `walking`).                                  |
| truckParameters       | A parameter object for a truck (only for `type=truck`).                                                                          |
| waypoints             | Array with coordinates of waypoints (`[LngLat, LngLat]`).                                                                        |
| waypointsPlaceholders | Array with placeholders for waypoint inputs (`[string, string]`).                                                                |
| autofocus             | Flag that the first waypoint input should be in focus when opening.                                                              |
| search                | Function that overrides the search function. By default, `ymaps3.search` is used.                                                |
| suggest               | Function that overrides the suggest function. By default, `ymaps3.suggest` is used.                                              |
| route                 | Function that overrides the route function. By default, `ymaps3.route` is used.                                                  |
| onMouseMoveOnMap      | Callback that is called when the user selects a waypoint on the map. It can be used to display a marker under the user's cursor. |
| onUpdateWaypoints     | Callback that is called when the user has changed the waypoints.                                                                 |
| onRouteResult         | Callback that receives a route between waypoints.                                                                                |
| onBuildRouteError     | Callback that is called if the route could not be set (route was not found or server error).                                     |

### Markers and popups

Markers are UI components that are linked to a coordinate on the map.
These components include the following classes:

- `YMapDefaultMarker` – a marker on the map. It can be of different sizes and contain an icon from a ready-made preset.
- `YMapPopupMarker` – a pop-up on the map with custom content.
  It may have a different position relative to the point it points to.

All markers have parameters from the [YMapMarker](https://yandex.ru/dev/maps/jsapi/doc/3.0/ref/index.html#YMapMarkerProps) base class.
But there are also specific parameters for each type of marker.

For `YMapDefaultMarker`:

| Props name | Description                                                                                                                                        |
| ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| iconName   | The name of the icon from the ready-made [icons preset](https://github.com/ymaps3-world/ymaps3-default-ui-theme/blob/main/docs/icons.generated.md) |
| color      | The name of the color from the ready-made colors preset or an object indicating the color for the day and night mode                               |
| size       | The size of the marker. 3 sizes are available: `normal`, `small`, `micro`;                                                                         |
| title      | The title to display in the marker hint                                                                                                            |
| subtitle   | The subtitle to display in the marker hint                                                                                                         |
| staticHint | A flag to indicate that the hint is static or appears when the mouse hovers over the marker                                                        |
| popup      | The parameters for the embedded got into the marker                                                                                                |

For `YMapPopupMarker`:

| Props name | Description                                                                     |
| ---------- | ------------------------------------------------------------------------------- |
| content    | The function of creating popup content                                          |
| position   | The position of the popup in relation to the point it is pointing to            |
| offset     | The offset in pixels between the popup pointer and the point it is pointing to. |
| show       | Hide or show popup on map                                                       |
| onClose    | Popup closing callback                                                          |
| onOpen     | Popup opening callback                                                          |
