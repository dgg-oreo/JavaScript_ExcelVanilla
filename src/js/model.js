
const FILAS = 20;     
const COLUMNAS = 20;   


function numeroALetra(indice) {
  return String.fromCharCode(65 + indice); // 65 = A 
}

const celdas = {};


function inicializarCeldas() {
  for (let fila = 1; fila <= FILAS; fila++) {
    for (let col = 0; col < COLUMNAS; col++) {
      const nombreCelda = numeroALetra(col) + fila;
      celdas[nombreCelda] = "";
    }
  }
}
function obtenerValorCelda(nombreCelda) {
  return celdas[nombreCelda] !== undefined ? celdas[nombreCelda] : "";
}
function guardarValorCelda(nombreCelda, valorNuevo) {
  celdas[nombreCelda] = valorNuevo;
}