import React,{useState} from 'react';
import ListItem from '@material-ui/core/ListItem';
import ListItemIcon from '@material-ui/core/ListItemIcon';
import ListItemText from '@material-ui/core/ListItemText';
import Header from '../Header/Header';
import Footer from '../Footer/Footer';
import Button from '@material-ui/core/Button';
import Listitem from '../Listitem';
import { Grid } from '@material-ui/core';
import {getThemeProps, makeStyles} from '@material-ui/styles';
import List from '@material-ui/core/List';
import Counter from '../../Counter';
import Product from '../../Product';
const useStyles = makeStyles((theme=>({

})))
export default function Sidebar(props){
    const classes = useStyles();
    
    // const handleCounter =()=>{
    //    props.history.push({pathname:`/counter`})
    // }

    // const handleProduct =()=>{
    //     props.history.push({pathname:`/Product`})
    //  }
     const handleClick=(showData)=>{
        props.handle_Components(showData);
        }
     


    return(

        <div>
             <Grid container spacing={2}>
                 <Grid item xs={8}>
                  <div className={classes.sidemenu}>
                    <ul>
                        <li><a href="">Counter</a></li>
                        <li><a href="" >Product</a></li>
                    </ul>
                  </div>
                 </Grid>
                 <Grid item xs={4}>
                  <div >   
                  
                  </div>
                 </Grid>
             </Grid>
        </div>
    )
}
