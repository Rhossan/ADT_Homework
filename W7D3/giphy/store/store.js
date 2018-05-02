import { createStore, applyMiddleware } from 'redux';
import thunk from 'redux-thunk';
import rootReducer from '../reducers/root_reducer';
import {fetchSearchGiphys} from '../util/api_util';
import {receiveSearchGiphys} from '../actions/giphy_actions';

const configureStore = () => {
  return createStore(rootReducer);
};


export default configureStore;
