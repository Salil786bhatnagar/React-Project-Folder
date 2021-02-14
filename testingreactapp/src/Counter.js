import React from 'react';
import {useSelector, useDispatch} from 'react-redux';

export default function Counter(){
const counter = useSelector(state=>state.counter)
const dispatch = useDispatch()
  
 function handleplus()
 {dispatch({type:'INCREAMENT'})}

 function handleminus()
 {dispatch({type:'DECREAMENT'})}
 return(
  <div>
    <div><h3>Counter using Redux...</h3></div>
    <h1>{counter}</h1>
    <button onClick={handleplus}>click +</button>
    <button onClick={handleminus}>click -</button>
  </div>
)

 }