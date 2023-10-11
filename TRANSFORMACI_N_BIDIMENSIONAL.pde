float scaleFactor = 1.0; // Variable para el factor de escala
float scaleDirection = 1.0; // Dirección del cambio en el factor de escala
float rotationAngle = 0.0; // Variable para el ángulo de rotación
float shearXValue = 0.0; // Variable para el sesgo en X
float shearYValue = 0.0; // Variable para el sesgo en Y

void setup() {
  size(400, 400);
}

void draw() {
  background(220);

  // Centra el origen de coordenadas
  translate(width / 2, height / 2);

  // Escalamiento
  scale(scaleFactor);

  // Rotación
  rotate(radians(rotationAngle));

  // Sesgo
  shearX(radians(shearXValue));
  shearY(radians(shearYValue));

  // Dibuja un rectángulo en el centro
  rect(-25, -25, 50, 50); // El rectángulo está centrado y cambia de tamaño

  // Actualiza las variables para ver el movimiento
  scaleFactor += 0.01 * scaleDirection; // Incrementa o decrementa el factor de escala
  rotationAngle += 1; // Incrementa el ángulo de rotación
  shearXValue += 1; // Incrementa el sesgo en X
  shearYValue += 1; // Incrementa el sesgo en Y

  // Invierte la dirección del cambio en el factor de escala cuando alcanza ciertos límites
  if (scaleFactor > 2.0 || scaleFactor < 0.5) {
    scaleDirection *= -1.0;
  }
}
