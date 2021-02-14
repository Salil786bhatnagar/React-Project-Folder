import React from 'react';

class Profileclass_state extends React.Component{
    constructor(){
        super()
        this.state={
            name:'rahul',
            email:'rahul@gamil.com',
            count:0
        }
    }

    updateState(){
        this.setState({
            name:'salil bhatnagar',
            
        })
    }

    countState(){
        this.setState({
            count:this.state.count+1
        })
    }

    render(){

        return(
            <div>
                <h3>Hello &nbsp;{this.state.name}</h3>
                <h3>{this.state.email}</h3>
                <h4>{this.state.count}</h4>
                <button onClick={()=>{this.updateState()}}>Update</button>
                <button onClick={()=>{this.countState()}}>Count</button>
            </div>
        )
    }
}

export default Profileclass_state;