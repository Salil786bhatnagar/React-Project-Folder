import React from 'react';
import {makeStyles,grid} from '@material-ui/styles';
import Grid from '@material-ui/core/Grid';
const useStyle = makeStyles((theme=>({
  footer:{
    backgroundColor: '#04040487',
    padding: '15px 0px 15px 0px',
    position: 'relative',
    top: '120px',
  }
})))
export default function Footer(){
  const classes = useStyle();
    return(
        <div>
          <Grid> 
             <Grid item xs={12}>
                <div className={classes.footer}>
                  <p>footer</p>
                </div>
             </Grid>
          </Grid>

          
        </div>
    )
}