import React from 'react'
import {makeStyles} from '@material-ui/styles';
import Grid from '@material-ui/core/Grid';
const useStyle = makeStyles((theme=>({
    divMenu:{
        backgroundColor:'lightgreen',
        minHeight: 75,
        padding: '1px 0px',
    },
    header:{
        padding:'1px 1px 1px 1px',
        width: '99%',
    }
})));
export default function Header(){
const classes = useStyle();
    return(
        <div className={classes.header}>
            
            <Grid container spacing={2}>
               <Grid item xs={12}> 
                <div className={classes.divMenu}>
                    Dashboard
                    <ul>
                        <li><a>User Sing In</a></li>
                        <li><a>User Sing Up</a></li>
                    </ul>
                </div>
               </Grid>
            </Grid>

            


        </div>
    )
}