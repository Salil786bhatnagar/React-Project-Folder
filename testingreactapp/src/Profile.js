import React from 'react';

function Profile(ps){
  const profilePgae=()=>{
      alert('My profile page')
  }
   return(
       <div>
           <h2 onClick={profilePgae}>Name:-{ps.fullname.name}</h2>
           <h2>Number:-{ps.contact.no}</h2> 
           <h2>Company:-{ps.company.cmn}</h2>
       </div>
   )  

}

export default Profile;