$ErrorActionPreference = 'Stop'
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)

$productos = @(
    @("Set Utensilios Silicona Rosa", "Análisis: Set de Utensilios de Silicona Rosa", "utensilios"),
    @("Set Utensilios Silicona Negro", "Guía de Compra: Set de Utensilios Negros", "utensilios"),
    @("Organizador Estación Café", "Reseña: Estante para Estación de Café", "organización"),
    @("Especiero de Pared", "Análisis: Especiero de Pared con Toallero", "organización"),
    @("Especiero Giratorio", "Opinión: Especiero Giratorio de Acero", "organización"),
    @("Alacena Negra", "Reseña: Alacena Minimalista Negra", "muebles"),
    @("Contenedores Refrigerador", "Guía: Contenedores para Fruta y Verdura", "organización"),
    @("Mueble Inferior Fregadero", "Análisis: Mueble Base para Fregadero", "muebles"),
    @("Mueble Alto Blanco", "Opinión: Mueble Alto de Organización", "muebles"),
    @("Vasos de Vidrio Altos", "Reseña: Set de Vasos Highball para Bebidas", "vajilla"),
    @("Batería de Cocina Negra", "Análisis: Batería de Cocina con Antiadherente", "baterias"),
    @("Fregadero Acero Inox", "Guía de Compra: Fregadero Multifunción", "remodelación"),
    @("Recipientes de Vidrio", "Reseña: Set de Tupperwares de Vidrio", "organización"),
    @("Frascos de Especias", "Opinión: Set de Frascos de Vidrio para Especias", "organización"),
    @("Escurridor de Fregadero", "Análisis: Escurridor de 2 Niveles Metálico", "organización"),
    @("Taburetes de Barra", "Guía: Taburetes de Barra Negros Ajustables", "muebles"),
    @("Batería Texturizada", "Reseña: Batería Antiadherente con Cuchillos", "baterias"),
    @("Batería Premium", "Análisis: Set de Ollas y Sartenes Premium", "baterias"),
    @("Batería Color Oliva", "Opinión: Batería de Cocina Elegante Color Oliva", "baterias")
)

$htmlIndex = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hogar Experto | Los Mejores Productos para tu Cocina</title>
    <meta name="description" content="Descubre los mejores artículos para organizar y equipar tu cocina. Análisis honestos y guías de compra de Hogar Experto.">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; }
    </style>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
</head>
<body class="bg-gray-50 text-gray-800 flex flex-col min-h-screen">
    
    <header class="bg-white shadow-sm sticky top-0 z-50">
        <nav class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 py-5 flex justify-between items-center">
            <a href="index.html" class="flex items-center gap-2">
                <img src="logo.png" alt="Hogar Experto" class="h-10 w-auto object-contain">
                <span class="font-extrabold text-2xl tracking-tight text-emerald-800 hidden sm:inline">Hogar<span class="text-emerald-500">Experto</span></span>
            </a>
            <ul class="hidden md:flex space-x-8 text-sm font-semibold text-gray-600">
                <li><a href="index.html" class="text-emerald-700 transition-colors">Inicio</a></li>
                <li><a href="articulos.html" class="hover:text-emerald-600 transition-colors">Artículos</a></li>
                <li><a href="sobre-nosotros.html" class="hover:text-emerald-600 transition-colors">Sobre Nosotros</a></li>
                <li><a href="contacto.html" class="hover:text-emerald-600 transition-colors">Contacto</a></li>
            </ul>
        </nav>
    </header>

    <main class="flex-grow">
        <!-- Hero Section -->
        <div class="bg-emerald-700 text-white py-20 px-4">
            <div class="max-w-4xl mx-auto text-center">
                <h1 class="text-4xl md:text-6xl font-extrabold mb-6 tracking-tight">Equipa tu Cocina como un Experto</h1>
                <p class="text-xl md:text-2xl font-medium text-emerald-100 mb-10 max-w-2xl mx-auto">Analizamos baterías, utensilios y organizadores para que elijas solo lo mejor para tu hogar.</p>
                <a href="articulos.html" class="inline-block bg-white text-emerald-800 font-bold py-4 px-8 rounded-full shadow-lg hover:bg-gray-100 hover:shadow-xl transition transform hover:-translate-y-1">Explorar Catálogo Completo</a>
            </div>
        </div>

        <div class="max-w-6xl mx-auto px-4 py-16">
            <h2 class="text-3xl font-bold text-gray-900 mb-8 text-center">Artículos Destacados</h2>
            
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <!-- Tarjeta 1 -->
                <a href="articulo-1.html" class="group bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden hover:shadow-xl transition duration-300 flex flex-col">
                    <div class="h-48 overflow-hidden bg-gray-50 p-4">
                        <img src="img_producto1.webp" alt="Utensilios" class="w-full h-full object-contain group-hover:scale-105 transition duration-500">
                    </div>
                    <div class="p-6 flex-grow flex flex-col">
                        <span class="text-xs font-bold text-emerald-600 uppercase tracking-wider mb-2">Utensilios</span>
                        <h3 class="text-xl font-bold text-gray-900 mb-2 group-hover:text-emerald-600 transition-colors">Análisis: Set de Utensilios Rosa</h3>
                        <p class="text-gray-600 text-sm flex-grow">Descubre por qué este set de silicona es esencial para proteger tus sartenes antiadherentes.</p>
                        <div class="mt-4 pt-4 border-t border-gray-100 flex items-center justify-between">
                            <span class="text-xs font-semibold text-gray-500">Lectura 4 min</span>
                            <span class="text-emerald-600 font-medium text-sm group-hover:translate-x-1 transition transform">Leer reseña →</span>
                        </div>
                    </div>
                </a>

                <!-- Tarjeta 2 -->
                <a href="articulo-2.html" class="group bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden hover:shadow-xl transition duration-300 flex flex-col">
                    <div class="h-48 overflow-hidden bg-gray-50 p-4">
                        <img src="img_producto2.webp" alt="Utensilios Negros" class="w-full h-full object-contain group-hover:scale-105 transition duration-500">
                    </div>
                    <div class="p-6 flex-grow flex flex-col">
                        <span class="text-xs font-bold text-emerald-600 uppercase tracking-wider mb-2">Utensilios</span>
                        <h3 class="text-xl font-bold text-gray-900 mb-2 group-hover:text-emerald-600 transition-colors">Guía: Set de Utensilios Negros</h3>
                        <p class="text-gray-600 text-sm flex-grow">Aporta elegancia a tu cocina con este completo set de 31 piezas resistente al calor.</p>
                        <div class="mt-4 pt-4 border-t border-gray-100 flex items-center justify-between">
                            <span class="text-xs font-semibold text-gray-500">Lectura 4 min</span>
                            <span class="text-emerald-600 font-medium text-sm group-hover:translate-x-1 transition transform">Leer reseña →</span>
                        </div>
                    </div>
                </a>

                <!-- Tarjeta 3 -->
                <a href="articulo-11.html" class="group bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden hover:shadow-xl transition duration-300 flex flex-col">
                    <div class="h-48 overflow-hidden bg-gray-50 p-4">
                        <img src="img_producto11.webp" alt="Batería" class="w-full h-full object-contain group-hover:scale-105 transition duration-500">
                    </div>
                    <div class="p-6 flex-grow flex flex-col">
                        <span class="text-xs font-bold text-emerald-600 uppercase tracking-wider mb-2">Baterías</span>
                        <h3 class="text-xl font-bold text-gray-900 mb-2 group-hover:text-emerald-600 transition-colors">Batería de Cocina Antiadherente</h3>
                        <p class="text-gray-600 text-sm flex-grow">Cocinamos sin aceite para poner a prueba el recubrimiento de esta batería negra.</p>
                        <div class="mt-4 pt-4 border-t border-gray-100 flex items-center justify-between">
                            <span class="text-xs font-semibold text-gray-500">Lectura 4 min</span>
                            <span class="text-emerald-600 font-medium text-sm group-hover:translate-x-1 transition transform">Leer reseña →</span>
                        </div>
                    </div>
                </a>

                <!-- Tarjeta 4 -->
                <a href="articulo-5.html" class="group bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden hover:shadow-xl transition duration-300 flex flex-col">
                    <div class="h-48 overflow-hidden bg-gray-50 p-4">
                        <img src="img_producto5.webp" alt="Especiero" class="w-full h-full object-contain group-hover:scale-105 transition duration-500">
                    </div>
                    <div class="p-6 flex-grow flex flex-col">
                        <span class="text-xs font-bold text-emerald-600 uppercase tracking-wider mb-2">Organización</span>
                        <h3 class="text-xl font-bold text-gray-900 mb-2 group-hover:text-emerald-600 transition-colors">Especiero Giratorio de Acero</h3>
                        <p class="text-gray-600 text-sm flex-grow">Mantén tus condimentos a la mano con este práctico organizador de especias de 20 frascos.</p>
                        <div class="mt-4 pt-4 border-t border-gray-100 flex items-center justify-between">
                            <span class="text-xs font-semibold text-gray-500">Lectura 4 min</span>
                            <span class="text-emerald-600 font-medium text-sm group-hover:translate-x-1 transition transform">Leer reseña →</span>
                        </div>
                    </div>
                </a>
                
                <!-- Tarjeta 5 -->
                <a href="articulo-7.html" class="group bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden hover:shadow-xl transition duration-300 flex flex-col">
                    <div class="h-48 overflow-hidden bg-gray-50 p-4">
                        <img src="img_producto7.webp" alt="Contenedores" class="w-full h-full object-contain group-hover:scale-105 transition duration-500">
                    </div>
                    <div class="p-6 flex-grow flex flex-col">
                        <span class="text-xs font-bold text-emerald-600 uppercase tracking-wider mb-2">Organización</span>
                        <h3 class="text-xl font-bold text-gray-900 mb-2 group-hover:text-emerald-600 transition-colors">Contenedores para Refrigerador</h3>
                        <p class="text-gray-600 text-sm flex-grow">Prolonga la vida de tus frutas y verduras con estos contenedores con ventilación.</p>
                        <div class="mt-4 pt-4 border-t border-gray-100 flex items-center justify-between">
                            <span class="text-xs font-semibold text-gray-500">Lectura 4 min</span>
                            <span class="text-emerald-600 font-medium text-sm group-hover:translate-x-1 transition transform">Leer reseña →</span>
                        </div>
                    </div>
                </a>

                <!-- Tarjeta 6 -->
                <a href="articulo-15.html" class="group bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden hover:shadow-xl transition duration-300 flex flex-col">
                    <div class="h-48 overflow-hidden bg-gray-50 p-4">
                        <img src="img_producto15.webp" alt="Escurridor" class="w-full h-full object-contain group-hover:scale-105 transition duration-500">
                    </div>
                    <div class="p-6 flex-grow flex flex-col">
                        <span class="text-xs font-bold text-emerald-600 uppercase tracking-wider mb-2">Organización</span>
                        <h3 class="text-xl font-bold text-gray-900 mb-2 group-hover:text-emerald-600 transition-colors">Escurridor de Platos Fregadero</h3>
                        <p class="text-gray-600 text-sm flex-grow">Ahorra espacio en tu encimera colocando este escurridor metálico directamente sobre el fregadero.</p>
                        <div class="mt-4 pt-4 border-t border-gray-100 flex items-center justify-between">
                            <span class="text-xs font-semibold text-gray-500">Lectura 4 min</span>
                            <span class="text-emerald-600 font-medium text-sm group-hover:translate-x-1 transition transform">Leer reseña →</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="mt-12 text-center">
                <a href="articulos.html" class="inline-block bg-gray-900 text-white font-bold py-3 px-8 rounded-full shadow hover:bg-gray-800 transition">Ver los 19 artículos completos</a>
            </div>
        </div>
    </main>

    <footer class="bg-slate-900 text-slate-300 py-12 border-t-4 border-emerald-600">
        <div class="max-w-6xl mx-auto px-4 grid grid-cols-1 md:grid-cols-3 gap-8 text-sm">
            <div>
                <div class="flex items-center gap-2 mb-4"><img src="logo.png" alt="Logo" class="h-8 w-auto opacity-90"><h3 class="text-white font-bold text-xl tracking-tight">Hogar<span class="text-emerald-500">Experto</span></h3></div>
                <p class="leading-relaxed">Tu guía confiable para encontrar los mejores artículos para tu cocina.</p>
            </div>
            <div>
                <h3 class="text-white font-semibold text-lg mb-4">Enlaces Importantes</h3>
                <ul class="space-y-3">
                    <li><a href="sobre-nosotros.html" class="hover:text-emerald-400 transition-colors">Sobre Nosotros</a></li>
                    <li><a href="politica-privacidad.html" class="hover:text-emerald-400 transition-colors">Política de Privacidad</a></li>
                    <li><a href="contacto.html" class="hover:text-emerald-400 transition-colors">Contacto</a></li>
                </ul>
            </div>
            <div>
                <h3 class="text-white font-semibold text-lg mb-4">Aviso de Afiliación</h3>
                <p class="text-xs leading-relaxed text-slate-400 bg-slate-800 p-4 rounded-lg border border-slate-700">
                    <strong>Transparencia:</strong> Participamos en programas de afiliados. Algunas compras realizadas a través de los enlaces nos generan una comisión, sin costo adicional para ti.
                </p>
            </div>
        </div>
        <div class="max-w-6xl mx-auto px-4 mt-10 pt-6 border-t border-slate-800 text-center text-xs text-slate-500">
            &copy; 2024 Hogar Experto. Todos los derechos reservados.
        </div>
    </footer>
</body>
</html>
"@

$htmlArticulos = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catálogo Completo | Hogar Experto</title>
    <meta name="description" content="Lista completa de análisis de productos de cocina y hogar.">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; }
    </style>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
</head>
<body class="bg-gray-50 text-gray-800 flex flex-col min-h-screen">
    
    <header class="bg-white shadow-sm sticky top-0 z-50">
        <nav class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 py-5 flex justify-between items-center">
            <a href="index.html" class="flex items-center gap-2"><img src="logo.png" alt="Hogar Experto" class="h-10 w-auto object-contain"><span class="font-extrabold text-2xl tracking-tight text-emerald-800 hidden sm:inline">Hogar<span class="text-emerald-500">Experto</span></span></a>
            <ul class="hidden md:flex space-x-8 text-sm font-semibold text-gray-600">
                <li><a href="index.html" class="hover:text-emerald-600 transition-colors">Inicio</a></li>
                <li><a href="articulos.html" class="text-emerald-700 transition-colors">Artículos</a></li>
                <li><a href="sobre-nosotros.html" class="hover:text-emerald-600 transition-colors">Sobre Nosotros</a></li>
                <li><a href="contacto.html" class="hover:text-emerald-600 transition-colors">Contacto</a></li>
            </ul>
        </nav>
    </header>

    <div class="bg-slate-900 py-12">
        <div class="max-w-6xl mx-auto px-4 text-center">
            <h1 class="text-3xl md:text-5xl font-extrabold text-white mb-4 tracking-tight">Catálogo de Reseñas</h1>
            <p class="text-slate-400 max-w-2xl mx-auto text-lg">Encuentra los mejores artículos de cocina cuidadosamente analizados por nuestro equipo.</p>
        </div>
    </div>

    <main class="flex-grow max-w-6xl mx-auto px-4 py-12 w-full">
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
"@

for ($i = 1; $i -le 19; $i++) {
    $tag = $productos[$i-1][2]
    $title = $productos[$i-1][1]
    
    $htmlArticulos += @"
            <a href="articulo-$i.html" class="group bg-white rounded-xl shadow-sm border border-gray-100 p-4 hover:shadow-lg transition duration-300 flex flex-col">
                <div class="h-40 bg-gray-50 rounded-lg overflow-hidden mb-4 p-2 flex items-center justify-center">
                    <img src="img_producto$i.webp" alt="Producto $i" class="max-h-full object-contain group-hover:scale-105 transition duration-500">
                </div>
                <span class="text-[10px] font-bold text-emerald-600 uppercase tracking-wider mb-2">$tag</span>
                <h3 class="text-sm font-bold text-gray-900 group-hover:text-emerald-600 transition-colors">$title</h3>
            </a>
"@
}

$htmlArticulos += @"
        </div>
    </main>

    <footer class="bg-slate-900 text-slate-300 py-12 border-t-4 border-emerald-600">
        <div class="max-w-6xl mx-auto px-4 grid grid-cols-1 md:grid-cols-3 gap-8 text-sm">
            <div>
                <div class="flex items-center gap-2 mb-4"><img src="logo.png" alt="Logo" class="h-8 w-auto opacity-90"><h3 class="text-white font-bold text-xl tracking-tight">Hogar<span class="text-emerald-500">Experto</span></h3></div>
                <p class="leading-relaxed">Tu guía confiable para equipar el hogar.</p>
            </div>
        </div>
    </footer>
</body>
</html>
"@

[System.IO.File]::WriteAllText("c:\Users\S4tehn\Documents\Pagina\index.html", $htmlIndex, $utf8NoBom)
[System.IO.File]::WriteAllText("c:\Users\S4tehn\Documents\Pagina\articulos.html", $htmlArticulos, $utf8NoBom)
Write-Host "Índices generados correctamente."
