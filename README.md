# Practica de Ubicaciones con datos de  API en Google Maps

Esta practica se realiza con una arquitectura MVC con intensión de mostrar  la información de manera clara y sencilla, se han realizado algunas mejoras las cuales buscan implantar los principios clean code .
Se decidió usar  CODABLE para mapear los datos por la fiabilidad y facilidad que ofrece este protocolo en Swift, así mismo se decidió usar  las extensiones fuera del controlador para hacerlas mas manejables y reutilizables. Para el detalle de la selección del elemento de el mapa se eligió una librería de el gestor de dependencia  cocoapods pues gráficamente muestra una ventana flotante que rápidamente se adaptad al proyecto y resuelve esa necesidad . Y como requerimiento de la practica se agrego el SDK de googleMaps para iOS en el cual se despliegan los datos de las coordenadas que ofrece el API
Posee una sencilla animación inicial como practica  personal en el uso de esta función , así como también un diseño y una propuesta gráfica de app comercial para darle más formalidad al ejercicio

Algunas mejoras realizadas sobre la base del proyecto anterior

- En en el ciclo de vida de MapLocationVC, se reordeno las funciones en ViewDidload para usar principios de Clean Code
- Se arreglo  los Signos Diagritic en texto que recibe, lo cual hacia que en la informaciones en la descripción aparecieran símbolos extraños en el texto
- Se creo una carpeta aparte para colocar las extensiones necesarias en la App
- Se agrego un ActivyIndicator para indicar proceso  de carga de datos
- Se agrego el Mockup del json para realizar  test unitarios
- Se creo una carpeta para separar las animaciones de intro del código de  la App
- Se agrego el manejo de errores en la llamada de Datos 
- Se agrego Alerta cuando no existe conexión a internet


## Image Captures

![image](imgMoveAndGo)

## Desarrollo

Xcode 11.2.1
iOS 13 or posterior
OS X 10.14.6
iphone X and iphone SE Compatible

## Cocoapods

- GoogleMaps
- GooglePlaces
- BulletinBoard
- MapLoader
- lottie-ios


## Nota
Si quieres aportar algun comentario u observación sera bien recibida. Muchas Gracias :)
