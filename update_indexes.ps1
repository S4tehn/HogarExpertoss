$htmlIndex = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Regalo Experto | Colección Stitch</title>
    <meta name="description" content="Descubre los mejores productos y artículos de colección de Stitch. Análisis honestos y recomendaciones de compra para fans de Disney.">
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
                <img src="logo.png" alt="Regalo Experto" class="h-10 w-auto object-contain">
                <span class="font-extrabold text-2xl tracking-tight text-blue-800 hidden sm:inline">Regalo<span class="text-blue-500">Experto</span></span>
            </a>
            <ul class="hidden md:flex space-x-8 text-sm font-semibold text-gray-600">
                <li><a href="index.html" class="text-blue-700 transition-colors">Inicio</a></li>
                <li><a href="articulos.html" class="hover:text-blue-600 transition-colors">Artículos</a></li>
                <li><a href="sobre-nosotros.html" class="hover:text-blue-600 transition-colors">Sobre Nosotros</a></li>
                <li><a href="contacto.html" class="hover:text-blue-600 transition-colors">Contacto</a></li>
            </ul>
        </nav>
    </header>

    <main class="flex-grow">
        <!-- Hero Section -->
        <div class="bg-blue-600 text-white py-20 px-4">
            <div class="max-w-4xl mx-auto text-center">
                <h1 class="text-4xl md:text-6xl font-extrabold mb-6 tracking-tight">Encuentra el Regalo Perfecto de Stitch</h1>
                <p class="text-xl md:text-2xl font-medium text-blue-100 mb-10 max-w-2xl mx-auto">Analizamos los artículos más buscados del Experimento 626 para que tu compra sea un éxito garantizado.</p>
                <a href="articulos.html" class="inline-block bg-white text-blue-700 font-bold py-4 px-8 rounded-full shadow-lg hover:bg-gray-100 hover:shadow-xl transition transform hover:-translate-y-1">Explorar Catálogo Completo</a>
            </div>
        </div>

        <div class="max-w-6xl mx-auto px-4 py-16">
            <h2 class="text-3xl font-bold text-gray-900 mb-8 text-center">Artículos Destacados</h2>
            
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <!-- Tarjeta 1 -->
                <a href="articulo-1.html" class="group bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden hover:shadow-xl transition duration-300 flex flex-col">
                    <div class="h-48 overflow-hidden bg-gray-50 p-4">
                        <img src="img_producto1.webp" alt="Peluche de Stitch" class="w-full h-full object-contain group-hover:scale-105 transition duration-500">
                    </div>
                    <div class="p-6 flex-grow flex flex-col">
                        <span class="text-xs font-bold text-blue-600 uppercase tracking-wider mb-2">Más Vendido</span>
                        <h3 class="text-xl font-bold text-gray-900 mb-2 group-hover:text-blue-600 transition-colors">El Peluche de Stitch Más Adorable</h3>
                        <p class="text-gray-600 text-sm flex-grow">Descubre por qué este es el peluche favorito de los fans. Análisis de suavidad, tamaño y detalles.</p>
                        <div class="mt-4 pt-4 border-t border-gray-100 flex items-center justify-between">
                            <span class="text-xs font-semibold text-gray-500">Lectura 4 min</span>
                            <span class="text-blue-600 font-medium text-sm group-hover:translate-x-1 transition transform">Leer reseña →</span>
                        </div>
                    </div>
                </a>

                <!-- Tarjeta 2 -->
                <a href="articulo-2.html" class="group bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden hover:shadow-xl transition duration-300 flex flex-col">
                    <div class="h-48 overflow-hidden bg-gray-50 p-4">
                        <img src="img_producto2.webp" alt="Pijama de Stitch" class="w-full h-full object-contain group-hover:scale-105 transition duration-500">
                    </div>
                    <div class="p-6 flex-grow flex flex-col">
                        <span class="text-xs font-bold text-blue-600 uppercase tracking-wider mb-2">Ropa y Moda</span>
                        <h3 class="text-xl font-bold text-gray-900 mb-2 group-hover:text-blue-600 transition-colors">Análisis: Pijama Mameluco de Stitch</h3>
                        <p class="text-gray-600 text-sm flex-grow">Comodidad extrema para tus noches de maratón Disney. Te contamos sobre su material y tallas.</p>
                        <div class="mt-4 pt-4 border-t border-gray-100 flex items-center justify-between">
                            <span class="text-xs font-semibold text-gray-500">Lectura 4 min</span>
                            <span class="text-blue-600 font-medium text-sm group-hover:translate-x-1 transition transform">Leer reseña →</span>
                        </div>
                    </div>
                </a>

                <!-- Tarjeta 3 -->
                <a href="articulo-3.html" class="group bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden hover:shadow-xl transition duration-300 flex flex-col">
                    <div class="h-48 overflow-hidden bg-gray-50 p-4">
                        <img src="img_producto3.webp" alt="Mochila de Stitch" class="w-full h-full object-contain group-hover:scale-105 transition duration-500">
                    </div>
                    <div class="p-6 flex-grow flex flex-col">
                        <span class="text-xs font-bold text-blue-600 uppercase tracking-wider mb-2">Escolar</span>
                        <h3 class="text-xl font-bold text-gray-900 mb-2 group-hover:text-blue-600 transition-colors">Guía de Compra: Mochila de Stitch</h3>
                        <p class="text-gray-600 text-sm flex-grow">Lleva a Stitch a todas partes con esta mochila resistente y con increíble diseño 3D.</p>
                        <div class="mt-4 pt-4 border-t border-gray-100 flex items-center justify-between">
                            <span class="text-xs font-semibold text-gray-500">Lectura 4 min</span>
                            <span class="text-blue-600 font-medium text-sm group-hover:translate-x-1 transition transform">Leer reseña →</span>
                        </div>
                    </div>
                </a>

                <!-- Tarjeta 4 -->
                <a href="articulo-4.html" class="group bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden hover:shadow-xl transition duration-300 flex flex-col">
                    <div class="h-48 overflow-hidden bg-gray-50 p-4">
                        <img src="img_producto4.webp" alt="Taza Stitch" class="w-full h-full object-contain group-hover:scale-105 transition duration-500">
                    </div>
                    <div class="p-6 flex-grow flex flex-col">
                        <span class="text-xs font-bold text-blue-600 uppercase tracking-wider mb-2">Hogar</span>
                        <h3 class="text-xl font-bold text-gray-900 mb-2 group-hover:text-blue-600 transition-colors">Reseña: Taza de Cerámica 3D</h3>
                        <p class="text-gray-600 text-sm flex-grow">El mejor acompañante para tu café de las mañanas. Detalles y resistencia al calor analizados.</p>
                        <div class="mt-4 pt-4 border-t border-gray-100 flex items-center justify-between">
                            <span class="text-xs font-semibold text-gray-500">Lectura 4 min</span>
                            <span class="text-blue-600 font-medium text-sm group-hover:translate-x-1 transition transform">Leer reseña →</span>
                        </div>
                    </div>
                </a>
                
                <!-- Tarjeta 5 -->
                <a href="articulo-5.html" class="group bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden hover:shadow-xl transition duration-300 flex flex-col">
                    <div class="h-48 overflow-hidden bg-gray-50 p-4">
                        <img src="img_producto5.webp" alt="Figuras Coleccionables" class="w-full h-full object-contain group-hover:scale-105 transition duration-500">
                    </div>
                    <div class="p-6 flex-grow flex flex-col">
                        <span class="text-xs font-bold text-blue-600 uppercase tracking-wider mb-2">Coleccionables</span>
                        <h3 class="text-xl font-bold text-gray-900 mb-2 group-hover:text-blue-600 transition-colors">Opinión: Set de Figuras de Stitch</h3>
                        <p class="text-gray-600 text-sm flex-grow">Detalladas figuras de colección para adornar tu repisa. Calidad de la pintura y modelado.</p>
                        <div class="mt-4 pt-4 border-t border-gray-100 flex items-center justify-between">
                            <span class="text-xs font-semibold text-gray-500">Lectura 4 min</span>
                            <span class="text-blue-600 font-medium text-sm group-hover:translate-x-1 transition transform">Leer reseña →</span>
                        </div>
                    </div>
                </a>

                <!-- Tarjeta 6 -->
                <a href="articulo-6.html" class="group bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden hover:shadow-xl transition duration-300 flex flex-col">
                    <div class="h-48 overflow-hidden bg-gray-50 p-4">
                        <img src="img_producto6.webp" alt="Funda Celular" class="w-full h-full object-contain group-hover:scale-105 transition duration-500">
                    </div>
                    <div class="p-6 flex-grow flex flex-col">
                        <span class="text-xs font-bold text-blue-600 uppercase tracking-wider mb-2">Accesorios</span>
                        <h3 class="text-xl font-bold text-gray-900 mb-2 group-hover:text-blue-600 transition-colors">Análisis: Funda de Stitch para Celular</h3>
                        <p class="text-gray-600 text-sm flex-grow">Protege tu teléfono con estilo alienígena. Resistencia a caídas y diseño anti-deslizante.</p>
                        <div class="mt-4 pt-4 border-t border-gray-100 flex items-center justify-between">
                            <span class="text-xs font-semibold text-gray-500">Lectura 4 min</span>
                            <span class="text-blue-600 font-medium text-sm group-hover:translate-x-1 transition transform">Leer reseña →</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="mt-12 text-center">
                <a href="articulos.html" class="inline-block bg-gray-900 text-white font-bold py-3 px-8 rounded-full shadow hover:bg-gray-800 transition">Ver los 19 artículos completos</a>
            </div>
        </div>
    </main>

    <footer class="bg-slate-900 text-slate-300 py-12 border-t-4 border-blue-600">
        <div class="max-w-6xl mx-auto px-4 grid grid-cols-1 md:grid-cols-3 gap-8 text-sm">
            <div>
                <div class="flex items-center gap-2 mb-4"><img src="logo.png" alt="Logo" class="h-8 w-auto opacity-90"><h3 class="text-white font-bold text-xl tracking-tight">Regalo<span class="text-blue-500">Experto</span></h3></div>
                <p class="leading-relaxed">Tu guía confiable para encontrar los mejores artículos y regalos. Analizamos productos populares con total honestidad.</p>
            </div>
            <div>
                <h3 class="text-white font-semibold text-lg mb-4">Enlaces Importantes</h3>
                <ul class="space-y-3">
                    <li><a href="sobre-nosotros.html" class="hover:text-blue-400 transition-colors">Sobre Nosotros</a></li>
                    <li><a href="politica-privacidad.html" class="hover:text-blue-400 transition-colors">Política de Privacidad</a></li>
                    <li><a href="contacto.html" class="hover:text-blue-400 transition-colors">Contacto</a></li>
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
            &copy; 2024 RegaloExperto. Todos los derechos reservados.
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
    <title>Catálogo Completo | Regalo Experto</title>
    <meta name="description" content="Lista completa de análisis de regalos y productos temáticos de Stitch de Disney.">
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
            <a href="index.html" class="flex items-center gap-2"><img src="logo.png" alt="Regalo Experto" class="h-10 w-auto object-contain"><span class="font-extrabold text-2xl tracking-tight text-blue-800 hidden sm:inline">Regalo<span class="text-blue-500">Experto</span></span></a>
            <ul class="hidden md:flex space-x-8 text-sm font-semibold text-gray-600">
                <li><a href="index.html" class="hover:text-blue-600 transition-colors">Inicio</a></li>
                <li><a href="articulos.html" class="text-blue-700 transition-colors">Artículos</a></li>
                <li><a href="sobre-nosotros.html" class="hover:text-blue-600 transition-colors">Sobre Nosotros</a></li>
                <li><a href="contacto.html" class="hover:text-blue-600 transition-colors">Contacto</a></li>
            </ul>
        </nav>
    </header>

    <div class="bg-slate-900 py-12">
        <div class="max-w-6xl mx-auto px-4 text-center">
            <h1 class="text-3xl md:text-5xl font-extrabold text-white mb-4 tracking-tight">Catálogo de Reseñas Stitch</h1>
            <p class="text-slate-400 max-w-2xl mx-auto text-lg">Encuentra los mejores artículos del Experimento 626 cuidadosamente analizados por nuestro equipo.</p>
        </div>
    </div>

    <main class="flex-grow max-w-6xl mx-auto px-4 py-12 w-full">
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
"@

$productos = @(
    @("Peluche Súper Suave", "El Peluche de Stitch Más Adorable"),
    @("Pijama Mameluco", "Análisis: Pijama Mameluco de Stitch"),
    @("Mochila Escolar", "Guía de Compra: Mochila de Stitch"),
    @("Taza de Cerámica", "Reseña: Taza de Cerámica de Stitch 3D"),
    @("Figuras Lilo & Stitch", "Opinión: Set de Figuras de Stitch"),
    @("Funda Protectora", "Análisis: Funda de Stitch para Celular"),
    @("Sudadera Gorro", "Reseña: Sudadera Diseño Stitch"),
    @("Lámpara de Noche", "Guía: Lámpara de Noche de Stitch"),
    @("Cobija Manta", "Opinión: Cobija Súper Suave de Stitch"),
    @("Termo Stitch", "Análisis: Termo de Stitch"),
    @("Pantuflas Stitch", "Reseña: Pantuflas de Stitch"),
    @("Reloj Inteligente", "Guía: Reloj Inteligente Stitch"),
    @("Audífonos Inalámbricos", "Análisis: Audífonos de Stitch"),
    @("Lonchera Térmica", "Reseña: Lonchera Escolar de Stitch"),
    @("Set Papelería", "Opinión: Set de Papelería de Stitch"),
    @("Llaveros Stitch Ángel", "Análisis: Llaveros de Stitch"),
    @("Peluche Sonido", "Reseña: Peluche Interactivo Stitch"),
    @("Estuche Maquillaje", "Guía: Estuche de Maquillaje Stitch"),
    @("Almohada Stitch", "Análisis: Almohada de Stitch")
)

for ($i = 1; $i -le 19; $i++) {
    $title = $productos[$i-1][1]
    $tag = $productos[$i-1][0]
    $htmlArticulos += @"
            <a href="articulo-$i.html" class="group bg-white rounded-xl shadow-sm border border-gray-100 p-4 hover:shadow-lg transition duration-300 flex flex-col">
                <div class="h-40 bg-gray-50 rounded-lg overflow-hidden mb-4 p-2 flex items-center justify-center">
                    <img src="img_producto$i.webp" alt="Stitch $i" class="max-h-full object-contain group-hover:scale-105 transition duration-500">
                </div>
                <span class="text-[10px] font-bold text-blue-600 uppercase tracking-wider mb-2">$tag</span>
                <h3 class="text-sm font-bold text-gray-900 group-hover:text-blue-600 transition-colors">$title</h3>
            </a>
"@
}

$htmlArticulos += @"
        </div>
    </main>

    <footer class="bg-slate-900 text-slate-300 py-12 border-t-4 border-blue-600">
        <div class="max-w-6xl mx-auto px-4 grid grid-cols-1 md:grid-cols-3 gap-8 text-sm">
            <div>
                <div class="flex items-center gap-2 mb-4"><img src="logo.png" alt="Logo" class="h-8 w-auto opacity-90"><h3 class="text-white font-bold text-xl tracking-tight">Regalo<span class="text-blue-500">Experto</span></h3></div>
                <p class="leading-relaxed">Tu guía confiable para encontrar los mejores artículos y regalos.</p>
            </div>
            <div>
                <h3 class="text-white font-semibold text-lg mb-4">Aviso de Afiliación</h3>
                <p class="text-xs leading-relaxed text-slate-400 bg-slate-800 p-4 rounded-lg border border-slate-700">
                    Participamos en programas de afiliados. Algunas compras nos generan una comisión.
                </p>
            </div>
        </div>
    </footer>
</body>
</html>
"@

Set-Content -Path "c:\Users\S4tehn\Documents\Pagina\index.html" -Value $htmlIndex -Encoding UTF8
Set-Content -Path "c:\Users\S4tehn\Documents\Pagina\articulos.html" -Value $htmlArticulos -Encoding UTF8
Write-Host "Páginas principales actualizadas"
