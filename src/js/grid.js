let celdaSeleccionada = null; 


function dibujarCuadricula() {
  const contenedor = document.querySelector(".sheet-scroll");
  contenedor.innerHTML = "";

  const tabla = document.createElement("table");
  tabla.classList.add("hoja-tabla");

  const filaEncabezado = document.createElement("tr");
  filaEncabezado.appendChild(document.createElement("th"));


  for (let col = 0; col < COLUMNAS; col++) {
    const th = document.createElement("th");
    th.textContent = numeroALetra(col);
    filaEncabezado.appendChild(th);
  }
  tabla.appendChild(filaEncabezado);
  for (let fila = 1; fila <= FILAS; fila++) {
    const filaHTML = document.createElement("tr");

    const thNumero = document.createElement("th");
    thNumero.textContent = fila;
    filaHTML.appendChild(thNumero);

    for (let col = 0; col < COLUMNAS; col++) {
      const nombreCelda = numeroALetra(col) + fila;

      const celdaHTML = document.createElement("td");
      celdaHTML.dataset.celda = nombreCelda;
      celdaHTML.textContent = obtenerValorCelda(nombreCelda);

      celdaHTML.addEventListener("click", () => seleccionarCelda(nombreCelda));
      celdaHTML.addEventListener("dblclick", () => activarEdicion(nombreCelda));

      filaHTML.appendChild(celdaHTML);
    }
    tabla.appendChild(filaHTML);
  }

  contenedor.appendChild(tabla);
}
