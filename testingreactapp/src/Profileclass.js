import React from 'react';
import Profile from './Profile';

class Profileclass extends React.Component{

    render(){
        return(
            <div>
               <h3>{this.props.text.name}</h3>
               <h3>{this.props.contact.no}</h3>
            </div>
        )
    }
}

export default Profileclass;