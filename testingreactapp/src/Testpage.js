import { render } from '@testing-library/react';
import React from 'react';

class Testpage  extends React.Component{

    constructor()
    {
        super();
        console.warn("constructor");
    }
    componentDidMount(){
        console.warn("componentDidMount");
    }
    render(){
        console.warn("render");
        return(
            <div>
               <h2>Life Cycle</h2>
            </div>
        )
    }

}

export default Testpage;