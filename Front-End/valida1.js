function login(){
  //alert('teste'); 
  //var attempt = 3;
  var un = document.getElementById('DropdownFormEmail2').value;
  var pwrd = document.getElementById('DropdownFormPassword1').value;
  if (un == "" && pwrd == "") 
  {
   alert("Por Favor preencha corretamente o email.");
   attempt --;
   return false;
  }
  if (un == "" && pwrd == "") 
  {
   alert("Por Favor preencha corretamente a senha.");
   attempt --;
   return false;
  }
//   if(un == "" && pwrd== "")
//   {
//    alert('Por Favor preencha correto os campos');
//    attempt --;
//    return false;
//   }
//   if(attempt == 0)
//   {
//    document.getElementById("DropdownFormEmail2").disabled = true;
//    document.getElementById("DropdownFormPassword1").disabled = true;
//    document.getElementById("submit01").disabled = true;
//    return false;
//  }
}