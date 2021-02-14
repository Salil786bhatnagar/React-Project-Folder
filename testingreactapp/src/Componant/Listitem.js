import React,{useState, useEffect} from 'react';
import List from '@material-ui/core/List';
import Counter from '../Counter';
import Product from '../Product';
import Profile from '../Profile';
import ListItem from '@material-ui/core/ListItem';
import ListItemIcon from '@material-ui/core/ListItemIcon';
import ListItemText from '@material-ui/core/ListItemText';
export default function Listitem(props){

  useEffect(function(){
    // alert(props.location.state.option)
    // handleClickData(props.history.location.state.option)
  
  },[])

  const handleClick=(showData)=>{
    props.handle_Components(showData);
    }
  
    return(
        <div>
           <ul>
            <ListItem button  onClick={()=>handleClick(1)}>
              <ListItemIcon>
                
              </ListItemIcon>
              <ListItemText primary="Redux Counter" />
            </ListItem>

            <ListItem button  onClick={()=>handleClick(2)}>
              <ListItemIcon>
               
              </ListItemIcon>
              <ListItemText primary="Product" />
            </ListItem>

            <ListItem button  onClick={()=>handleClick(3)}>
              <ListItemIcon>
               
              </ListItemIcon>
              <ListItemText primary="Profileclass state" />
            </ListItem>

            <ListItem button  onClick={()=>handleClick(4)}>
              <ListItemIcon>
               
              </ListItemIcon>
              <ListItemText primary="Profileclass state" />
            </ListItem>
               
               
            </ul>
        </div>
       
    )
    
}