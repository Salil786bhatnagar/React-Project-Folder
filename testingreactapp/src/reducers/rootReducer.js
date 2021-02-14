const initialState = {
    counter: 0
}

function rootRouducer(state=initialState,action){
 
    switch(action.type)
     {
         case 'INCREAMENT':
           return{counter:state.counter+1}
           break
          
          case 'DECREAMENT':
              return{counter:state.counter-1}
              break

          default:
              return state    
     }
}

export default rootRouducer;