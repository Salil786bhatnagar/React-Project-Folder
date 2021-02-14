import React from 'react';
import logo from './logo.svg';
import './Customcss/Custom.css';
import {BrowserRouter as Router, Route, Link} from 'react-router-dom';
import Profile from './Profile';
import Profileclass_state from './Profileclass_state';
import Counter from './Counter';
import Header from './Componant/Header/Header';
import Footer from './Componant/Footer/Footer';
import Sidebar from './Componant/Sidebar/Sidebar';
import Dashbord from './Componant/Dashbord/Dashboard';
import Profilefunction from './Profilefunction';
import Testpage from './Testpage';
import Ifsc_searchdata from './Banksearchdata/Ifsc_searchdata';

function App(props) {

  return (
  <div>
    <Router>
        <Route exact strict component={Profile} path="/Profile" history={props.history}/>
        <Route exact strict component={Profileclass_state} path="/Profileclass_state" history={props.history}/>
        <Route exact strict component={Counter} path="/Counter" history={props.history}/>
        <Route exact strict component={Header} path="/Header" history={props.history}/>
        <Route exact strict component={Footer} path="/Footer" history={props.history}/>
        <Route exact strict component={Sidebar} path="/Sidebar" history={props.history} />
        <Route exact strict component={Dashbord} path="/Dashbord" history={props.history} />
        <Route exact strict component={Profilefunction} path="/Profilefunction" history={props.history} />
        <Route exact strict component={Testpage} path="/Testpage" history={props.history} />
        <Route exact strict component={Ifsc_searchdata} path="/Ifsc_searchdata" history={props.history} />
    </Router>
  </div>

  );
}

export default App;
