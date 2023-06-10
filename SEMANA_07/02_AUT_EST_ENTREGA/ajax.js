function loadData() {
    
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) { 
        document.getElementById("conteudo").innerHTML = this.responseText;
      }
    };
    
    xhttp.open("GET", "index.html", true);
    xhttp.send();
  }
  