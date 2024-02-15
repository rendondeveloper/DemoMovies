# Movies Demo
Se crea un proyecto desde cero con la tecnología Flutter donde se pueda ver una lista de películas, un mapa con unos cuantos puntos relevantes de la Ciudad de México y no se construyó por falta de tiempo la sección de profile.

Se crea el app usan clean architecture  + screaming architecture + mvvm, se utiliza estas arquitecturas y patrón de diseño para poder facilitar la legibilidad del proyecto, de esta manera considero que es más fácil el poder entrar al repositorio y interpretar las funciones, responsabilidades y alcances del proyecto.


Los principales plugings
widget_ui -> Librería creada por mi, para poder mantener por separado los componentes de ui genéricos que se puedan compartir entre proyectos.
 util_commons -> Librería creada por mi, para poder mantener por separado clases, librerias comunes o extensiones que se puedan compartir entre proyectos.
riverpood y flutter_riverpood -> Para poder realizar el manejo estados y la inyección de dependencias.
go_router -> Para el manejo de las rutas.
http -> Para el manejo de las llamadas a las API.
slflite -> para el manejo del almacenamiento local en base de datos relacional.

## Used Plugings
<list>
  <p>[widgets_ui](https://github.com/rendondeveloper/WidgetsUi.git), Repositorio propio </p>
  <p>[util_commons](https://github.com/rendondeveloper/util_commons.git), Repositorio propio </p>
  <p>[flutter_riverpod](https://docs.flutter.dev/get-started/codelab)</p>
  <p>[freezed_annotation](https://pub.dev/packages/freezed_annotation)</p>
  <p>[http](https://pub.dev/packages/http)</p>
  <p>[google_maps_flutter](https://pub.dev/packages/google_maps_flutter)</p>
  <p>[location](https://pub.dev/packages/location)</p>
  <p>[riverpod](https://pub.dev/packages/riverpod)</p>
  <p>[sqflite](https://pub.dev/packages/sqflite)</p>
  <p>[build_runner](https://pub.dev/packages/build_runner)</p>  
  <p>[go_router](https://pub.dev/packages/go_router)</p>
 </list>

## Video
<p>Android</p>
<img src="https://github.com/rendondeveloper/DemoMovies/assets/42813444/7dd14433-2791-472f-89c1-6cb79a78e5ec" width="40%"/>

## Pasos para clonar el proyeto
<list>
  <p>1.- Clonar el proyecto desde <b>https://github.com/rendondeveloper/DemoMovies.git</b></p> 
  <img src="https://user-images.githubusercontent.com/42813444/219974572-b7091209-2a62-4bc8-9e53-b4884bfb5db1.png" width="20%"/>  
  <p>3.- Ejecutar  el comando <b>flutter gen-l10n</b> para generar los strings strings.</p>
  <p>3.- Ejecutar  el comando <b>flutter pub run build_runner build</b> para generar las clases inmutables.</p>
  <p>4.- Lanzar el app</p>
</list>
