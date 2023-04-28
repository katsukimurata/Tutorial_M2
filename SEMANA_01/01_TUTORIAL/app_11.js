const http = require('http');// servidor http
const hostname = '127.0.0.1'; // IP
const port = 3011;// requisição nessa porta
const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/html'); // cabeçalho
  res.end('<!DOCTYPE html> <head> <title>Etapa 0 - INSTALACAO</title></head> \ 
    < body >\
    <div id="main"> \
      <h1> Etapa 1 - INSTALACAO - Servidor Node.js </h1> \
      <H2> Meu servidor NODE.js funciona!</H2> </div> \
              </body > \
           </html > ');
});
server.listen(port, hostname, () => { // callback que o servidor é executado 
  console.log(`Server running at http://${hostname}:${port}/`);
});