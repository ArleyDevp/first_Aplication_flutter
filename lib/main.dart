// Importa la librería principal de widgets y diseño Material Design de Flutter.
import 'package:flutter/material.dart';

// Función principal: es el punto de entrada de la aplicación en Dart.
void main() {
  // Ejecuta la aplicación e inicializa el widget raíz 'MainApp'.
  runApp(const MainApp());
}

// Widget sin estado (StatelessWidget) que representa la raíz de la aplicación.
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp configura el tema global, la navegación y el estilo general de la app.
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta la etiqueta roja de "DEBUG" en la esquina.
      home: HomeScreen(), // Define la pantalla principal de la aplicación.
    );
  }
}

// Widget sin estado que construye la vista principal del Feed estilo Instagram.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold proporciona la estructura básica visual de una pantalla Material (AppBar, Body, BottomBar).
    return Scaffold(
      // --- BARRA SUPERIOR (AppBar) ---
      appBar: AppBar(
        leading: const Icon(Icons.add), // Icono a la izquierda (generalmente crear publicación/historia).
        title: const Text('Instagram'), // Título central de la aplicación.
        actions: const [Icon(Icons.favorite_border)], // Lista de acciones a la derecha (notificaciones/me gusta).
        centerTitle: true, // Centra el texto del título horizontalmente.
      ),

      // --- CUERPO PRINCIPAL (Body) ---
      body: SingleChildScrollView( // Permite hacer scroll vertical en todo el contenido que sobrepase la pantalla.
        child: Column( // Organiza los elementos hijos en una columna de arriba hacia abajo.
          children: [
            // ==========================================
            // SECCIÓN DE HISTORIAS (Historias horizontales)
            // ==========================================
            Container(
              height: 120, // Altura fija definida para el carrusel de historias.
              width: double.infinity, // Ocupa todo el ancho disponible en pantalla.
              color: Colors.white, // Fondo blanco para la sección de historias.
              child: SingleChildScrollView( // Habilita el desplazamiento horizontal solo para esta sección.
                scrollDirection: Axis.horizontal, // Define la dirección del scroll hacia la derecha/izquierda.
                child: Row( // Organiza los avatares de las historias en una fila horizontal.
                  children: [
                    // ----------------------------------
                    // HISTORIA 0: "Tu Historia" (Usuario propio)
                    // ----------------------------------
                    SizedBox(
                      width: 90, // Ancho fijo reservado para el item de la historia.
                      child: Column( // Alinea verticalmente la foto de perfil y el texto.
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: Stack( // Permite superponer widgets unos encima de otros (Foto + Botón '+').
                              children: [
                                ClipOval( // Recorta la imagen rectangular en forma de círculo perfecto.
                                  child: Image.network(
                                    "https://picsum.photos/id/64/100/100", // Carga la imagen desde la red.
                                    fit: BoxFit.cover, // Escala la imagen para llenar el contenedor sin deformarse.
                                    width: 75,
                                    height: 75,
                                  ),
                                ),
                                Positioned( // Posiciona el icono de agregar '+' en una esquina específica.
                                  bottom: 0, // Pegado al borde inferior.
                                  right: 0, // Pegado al borde derecho.
                                  child: Container(
                                    width: 22,
                                    height: 22,
                                    decoration: const BoxDecoration(
                                      color: Colors.blue, // Fondo azul oficial del botón agregar.
                                      shape: BoxShape.circle, // Forma circular para el botón.
                                    ),
                                    child: const Icon(
                                      Icons.add, // Icono del signo más '+'.
                                      color: Colors.white, // Color blanco para el icono.
                                      size: 16, // Tamaño reducido del icono.
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 5), // Espacio vertical entre la foto y el texto.
                          const Text("Tu historia", style: TextStyle(fontSize: 12)), // Etiqueta del usuario.
                        ],
                      ),
                    ),

                    // ----------------------------------
                    // HISTORIA 1
                    // ----------------------------------
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: ClipOval(
                              child: Image.network(
                                "https://picsum.photos/id/1012/100/100",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text("carlos_art", style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),

                    // ----------------------------------
                    // HISTORIA 2
                    // ----------------------------------
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: ClipOval(
                              child: Image.network(
                                "https://picsum.photos/id/1025/100/100",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text("maria_g", style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),

                    // ----------------------------------
                    // HISTORIA 3
                    // ----------------------------------
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: ClipOval(
                              child: Image.network(
                                "https://picsum.photos/id/1062/100/100",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text("alex_tech", style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),

                    // ----------------------------------
                    // HISTORIA 4
                    // ----------------------------------
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: ClipOval(
                              child: Image.network(
                                "https://picsum.photos/id/1074/100/100",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text("sofia_travel", style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),

                    // ----------------------------------
                    // HISTORIA 5
                    // ----------------------------------
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: ClipOval(
                              child: Image.network(
                                "https://picsum.photos/id/1005/100/100",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text("juan_perez", style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),

                    // ----------------------------------
                    // HISTORIA 6
                    // ----------------------------------
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: ClipOval(
                              child: Image.network(
                                "https://picsum.photos/id/1027/100/100",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text("laura_fit", style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const Divider(height: 1), // Línea divisoria muy fina entre las historias y las publicaciones.

            // ==========================================
            // PUBLICACIÓN 1
            // ==========================================
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Alinea el texto e imágenes a la izquierda.
              children: [
                // Cabecera de la publicación (Foto de perfil + Nombre + Opciones)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8), // Margen interno alrededor.
                  child: Row(
                    children: [
                      ClipOval( // Foto circular de perfil del usuario que publica.
                        child: Image.network(
                          "https://picsum.photos/id/1012/100/100",
                          width: 35,
                          height: 35,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10), // Separación entre la foto de perfil y el nombre.
                      const Text(
                        "carlos_art", // Nombre de usuario.
                        style: TextStyle(fontWeight: FontWeight.bold), // Texto en negrita.
                      ),
                      const Spacer(), // Empuja el icono de tres puntos hacia la extrema derecha.
                      const Icon(Icons.more_vert), // Icono de menú de tres puntos verticales.
                    ],
                  ),
                ),

                // Imagen principal del post
                SizedBox(
                  width: double.infinity, // Ocupa todo el ancho de la pantalla.
                  height: 350, // Altura estándar para la imagen de la publicación.
                  child: Image.network(
                    "https://picsum.photos/id/237/600/600",
                    fit: BoxFit.cover, // Ajusta la imagen manteniendo la proporción para cubrir el contenedor.
                  ),
                ),

                // Botones de interacción (Me gusta, Comentario, Compartir, Guardar)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    children: [
                      Icon(Icons.favorite_border, size: 28), // Icono de Corazón / Me gusta.
                      SizedBox(width: 15), // Espaciado horizontal entre botones.
                      Icon(Icons.chat_bubble_outline, size: 26), // Icono de Comentario.
                      SizedBox(width: 15),
                      Icon(Icons.send_outlined, size: 26), // Icono de Enviar / Direct Message.
                      Spacer(), // Empuja el icono de guardar hacia la extrema derecha.
                      Icon(Icons.bookmark_border, size: 28), // Icono de Guardar publicación.
                    ],
                  ),
                ),

                // Sección de Me gusta y Descripción
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Alineación de texto a la izquierda.
                    children: [
                      Text(
                        "Les gusta a maria_g y 120 personas más", // Texto indicando likes.
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4), // Pequeño espacio vertical.
                      Text.rich( // Permite combinar distintos estilos en una sola línea de texto.
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "carlos_art ", // Nombre del creador en negrita.
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: "Un gran día paseando con la mejor compañía! 🐶✨"), // Texto del pie de foto.
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20), // Separador con la siguiente publicación.
              ],
            ),

            // ==========================================
            // PUBLICACIÓN 2
            // ==========================================
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Cabecera
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          "https://picsum.photos/id/1074/100/100",
                          width: 35,
                          height: 35,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "sofia_travel",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Icon(Icons.more_vert),
                    ],
                  ),
                ),
                // Imagen
                SizedBox(
                  width: double.infinity,
                  height: 350,
                  child: Image.network(
                    "https://picsum.photos/id/1036/600/600",
                    fit: BoxFit.cover,
                  ),
                ),
                // Botones de acción
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    children: [
                      Icon(Icons.favorite_border, size: 28),
                      SizedBox(width: 15),
                      Icon(Icons.chat_bubble_outline, size: 26),
                      SizedBox(width: 15),
                      Icon(Icons.send_outlined, size: 26),
                      Spacer(),
                      Icon(Icons.bookmark_border, size: 28),
                    ],
                  ),
                ),
                // Likes y pie de foto
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "354 Me gusta",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "sofia_travel ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: "Increíble atardecer desde las montañas. 🏔️🌅"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),

            // ==========================================
            // PUBLICACIÓN 3
            // ==========================================
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Cabecera
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          "https://picsum.photos/id/1062/100/100",
                          width: 35,
                          height: 35,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "alex_tech",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Icon(Icons.more_vert),
                    ],
                  ),
                ),
                // Imagen
                SizedBox(
                  width: double.infinity,
                  height: 350,
                  child: Image.network(
                    "https://picsum.photos/id/180/600/600",
                    fit: BoxFit.cover,
                  ),
                ),
                // Botones de acción
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    children: [
                      Icon(Icons.favorite_border, size: 28),
                      SizedBox(width: 15),
                      Icon(Icons.chat_bubble_outline, size: 26),
                      SizedBox(width: 15),
                      Icon(Icons.send_outlined, size: 26),
                      Spacer(),
                      Icon(Icons.bookmark_border, size: 28),
                    ],
                  ),
                ),
                // Likes y pie de foto
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "89 Me gusta",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "alex_tech ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: "Trabajando en el nuevo proyecto de Flutter! 💻🚀"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),

      // ==========================================
      // BARRA DE NAVEGACIÓN INFERIOR (BottomNavigationBar)
      // ==========================================
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Mantiene fijos los iconos independientemente de cuántos haya.
        selectedFontSize: 0, // Desactiva el cambio de tamaño del texto al seleccionar un item.
        unselectedFontSize: 0,
        showSelectedLabels: false, // Oculta las etiquetas de texto de los items seleccionados.
        showUnselectedLabels: false, // Oculta las etiquetas de texto de los items no seleccionados.
        items: [
          // Item 1: Inicio
          const BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: '',
          ),
          // Item 2: Reels / Video Corto
          const BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline_sharp), 
            label: '',
          ),
          // Item 3: Icono de reproducción con indicador de punto rojo
          BottomNavigationBarItem(
            icon: Stack( // Permite colocar el punto rojo sobre el icono.
              children: [
                const Icon(Icons.play_arrow),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 9,
                    height: 9,
                    decoration: const BoxDecoration(
                      color: Colors.red, // Notificación con punto rojo.
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          ),
          // Item 4: Buscar
          const BottomNavigationBarItem(
            icon: Icon(Icons.search), 
            label: '',
          ),
          // Item 5: Perfil con la foto del usuario e indicador rojo de estado/notificación
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipOval( // Recorta la foto de perfil en el menú inferior.
                      child: Image.network(
                        "https://picsum.photos/id/64/100/100",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned( // Indicador de notificación sobre la foto de perfil.
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2), // Borde blanco alrededor del punto rojo.
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}