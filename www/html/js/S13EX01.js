function dessiner(){
  dessinerG();
  dessinerD();
}
function dessinerG(){ // redessiner la table de commande
  setElem('tbG', '');        // vider la table
  for(var i in catalogue) {  // chaque ligne de commande
    if(!catalogue[i].pret){
      var strin='<tr><td onmouseover=colorier(this); onmouseout=decolorier(this); onclick=putitemp(this); class=refe>' + i + '</td><td class=ecriv>' + catalogue[i].auteur + '</td><td class=qte>' + catalogue[i].titre+'</td>';
      strin+= '</tr>'; // ajouter une ligne de table html
      add2Elem('tbG', strin);
    }
  }
}
function dessinerD(){ // redessiner la table de commande
  setElem('tbD', '');      // vider la table
  for(var i in catalogue) {  // chaque ligne de commande
    if(catalogue[i].pret){
    var strin='<tr><td onmouseover=colorier(this); onmouseout=decolorier(this); onclick=putitren(this); class=refe>' + i + '</td><td class=ecriv>' + catalogue[i].auteur + '</td><td class=qte>' + catalogue[i].titre+'</td>';
    if(catalogue[i].pret){
    strin += '<td class=date>' + catalogue[i].dte.getDate() +'/'+(parseInt(catalogue[i].dte.getMonth())+1)+'/'+catalogue[i].dte.getFullYear() + '</td>';
    }
    strin+= '</tr>'; // ajouter une ligne de table html
    add2Elem('tbD', strin);
    }
  }
}
function colorier(cases){
  cases.style.backgroundColor = 'blue';
}
function decolorier(cases){
  cases.style.backgroundColor = 'silver';
}
function putitren(cases){
  document.frm2.ren.value=cases.innerHTML;
}
function putitemp(cases){
  document.frm1.emp.value=cases.innerHTML;
}
function giveBack(){
  catalogue[frm2.ren.value].pret=false;
  frm2.ren.value='';
  dessiner();
  return false;
}
function emprunt(){
  catalogue[frm1.emp.value].pret=true;
  catalogue[frm1.emp.value].dte=new Date;
  frm1.emp.value='';
  dessiner();
  return false;
}