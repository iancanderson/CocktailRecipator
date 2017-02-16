import {
  AppRegistry,
} from 'react-native';

const Elm = require('./elm');
const component = Elm.Main.start();

AppRegistry.registerComponent('CocktailRecipator', () => component);
