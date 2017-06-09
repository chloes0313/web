var message="TASTY PANGYO"
var neonbasecolor="000000"
var neontextcolor="FFFFFF"
var neontextcolor2="#FFFFFF"
var flashspeed=150						// VELOCIDAD DEL PARPADEO EN MILISEGUNDOS
var flashingletters=0						// CANTIDAD DE LETRAS PARPADEANDO EN neontextcolor
var flashingletters2=1						// CANTIDAD DE LETRAS PARPADEANDO EN neontextcolor2 (COLOCA 0 PARA DESACTIVAR)
var flashpause=0						// LA PAUSA ENTRE LOS CICLOS DE PARPADEO EN MILISEGUNDOS

///NO NECESITAR EDITAR POR DEBAJO DE ESTA LINEA/////

var n=0
if (document.all||document.getElementById){
document.write('<font color="'+neonbasecolor+'">')
for (m=0;m<message.length;m++)
document.write('<span id="neonlight'+m+'">'+message.charAt(m)+'</span>')
document.write('</font>')
}
else
document.write(message)

function crossref(number){
var crossobj=document.all? eval("document.all.neonlight"+number) : document.getElementById("neonlight"+number)
return crossobj
}

function neon(){

//Change all letters to base color
if (n==0){
for (m=0;m<message.length;m++)
crossref(m).style.color=neonbasecolor
}

//cycle through and change individual letters to neon color
crossref(n).style.color=neontextcolor

if (n>flashingletters-1) crossref(n-flashingletters).style.color=neontextcolor2 
if (n>(flashingletters+flashingletters2)-1) crossref(n-flashingletters-flashingletters2).style.color=neonbasecolor


if (n<message.length-1)
n++
else{
n=0
clearInterval(flashing)
setTimeout("beginneon()",flashpause)
return
}
}

function beginneon(){
if (document.all||document.getElementById)
flashing=setInterval("neon()",flashspeed)
}
beginneon()