import React,{useState} from 'react';
import List from '@material-ui/core/List';
import { Grid } from '@material-ui/core';
import Header from '../Header/Header';
import Footer from '../Footer/Footer';
import Listitem from '../Listitem';
import Counter from '../../Counter';
import Product from '../../Product';
import Profileclass_state from '../../Profileclass_state';
import Profilefunction from '../../Profilefunction';
import {makeStyles} from '@material-ui/styles';
const useStyles = makeStyles((theme=>({
    // mainDiv:{
    //     width:100
    // },
    mainRoot:{
        width:'60%',
    },
    sidemenu:{
        backgroundColor:'#0c0c0cad',
    },
    sidemenutext:{
        textAlign:"center",
        position: 'relative',
        right: '24%',
        color: 'burlywood',
    },
    sidecontain:{
        backgroundColor:'#d2d2d2d4',
        position: 'relative',
        left: '30px',
    },
    sidecontaintext:{
        position:'relative',
        left:'10%',
        padding: '20px 0px 20px 20px',
        minHeight: '300px',
    }
})))


export default function Dashoard(){
const classes = useStyles()

const [ShowComponents, setComponet]=useState();
const handleComponents=async(ShowData)=>{
    switch(ShowData)
    {
      case 1: 
      setComponet(<Counter/>)
      break
      case 2:
      setComponet(<Product/>)
      break
      case 3:
       setComponet(<Profileclass_state/>)
       break
       case 4:
        setComponet(<Profilefunction/>)
        break
    }
  }

   return(
      
       <div>
           <div className={classes.divHeader}>
            <Grid>
                <Header/>
            </Grid>
           </div> 
           <div className={classes.mainRoot}>
             <Grid container spacing={6}>
                 <Grid item xs={4}>
                  <div className={classes.sidemenu}>
                    <p className={classes.sidemenutext}><List><Listitem  handle_Components={handleComponents}/></List></p>
                  </div>
                 </Grid>
                 <Grid item xs={8}>
                  <div className={classes.sidecontain}>   
                  <p className={classes.sidecontaintext}>{ShowComponents}</p>
                  </div>
                 </Grid>
             </Grid>
        </div>

           <Grid>
             <Footer/>
           </Grid>
           
       </div>
   )

}