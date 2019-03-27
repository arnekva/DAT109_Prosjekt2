
  function gridview(){
    var view = document.getElementById('grid-view');
    view.classList.remove("stand_list-listview");
    view.classList.add("stand_list");
    var items = document.getElementsByClassName('exponr');
  for (var i=0; i < items.length; i++) {
    items[i].style.display = 'none';
    //items[i].style.float = 'none';

  }
  var listheader = document.getElementById('list-view-header');
  listheader.style.display = 'none';
  var infotext = document.getElementsByClassName('infoText');
  for (var i=0; i < items.length; i++) {
  infotext[i].style.height = '100px';
  //infotext[i].style.float = 'none';
  }
  }
  function listview(){
    var header = document.getElementById('list-view-header');
    header.style.display = 'block';
    var infoitems = document.getElementsByClassName('infoText');
  for (var i=0; i < infoitems.length; i++) {
    infoitems[i].style.lineHeight = 'normal';
    //items[i].style.float = 'none';

  }
    var view = document.getElementById('grid-view');
    view.classList.remove("stand_list");
    view.classList.add("stand_list-listview");
    var items = document.getElementsByClassName('exponr');
  for (var i=0; i < items.length; i++) {
    items[i].style.display = 'block';
    //items[i].style.float = 'none';

  }
  var infotext = document.getElementsByClassName('infoText');
  for (var i=0; i < items.length; i++) {
  infotext[i].style.height = 'auto';
  //infotext[i].style.float = 'none';
  }
  var liArr = document.getElementsByTagName("LI");

  for(var i = 0; i < liArr.length; i++) {
      var parent = liArr[i].parentNode;
      var grandParent = parent.parentNode;

      if(grandParent != null && grandParent.id == "gridview") {
         liArr[i].style.margin = "50px 10px 10px 10px";
         liArr[i].style.width = "100%";
      }
  }
  var header = document.getElementById('list-view-header');
  header.style.display = 'block';
  }
  function listtest(){

  }
