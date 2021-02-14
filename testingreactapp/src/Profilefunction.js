import React, { useState } from 'react';

function Profilefunction(){
  const[getcount, setCount]= useState(1)

    return(
        <div>
            <p>You clicked {getcount} times</p>
            <button onClick={()=>setCount(getcount+2)}>Click</button>
        </div>
    )
}

export default Profilefunction;