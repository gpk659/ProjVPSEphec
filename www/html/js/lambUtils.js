// librairie de fonctions utiles
// Lamb

// fonctions utilitaires
function setElem(id, txt){
  // place la valeur txt dans l'élément id
  document.getElementById(id).innerHTML = txt;
}
function setClassElem(classn, txt){
  // place la valeur txt dans l'élément id
  document.getElementsByClassName(classn).innerHTML = txt;
}
function add2Elem(id, txt){
  // ajoute la valeur txt au contenu de l'élément id
  document.getElementById(id).innerHTML += txt;
}   
function add2ClassElem(classn, txt){
  // ajoute la valeur txt au contenu de l'élément id
  document.getElementsByClassName(classn).innerHTML += txt;
}   
function getElem(id){
  // renvoie le contenu de l'élément id
  return document.getElementById(id);
}
function sortAsso(tab2Sort){
  //trie un tableau associatif et le renvoie
  var keysTab=Object.keys(tab2Sort);
  var tabSorted={};
  for(var b in keysTab){
  keysTab.sort();
  tabSorted[keysTab[b]]=tab2Sort[keysTab[b]];
  }
  return tabSorted;
}
function synchroSelect(selObj){
  getElem('nm').selectedIndex = selObj.selectedIndex;
  getElem('prx').selectedIndex = selObj.selectedIndex;
}