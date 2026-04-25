$htmlSobreNosotros = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sobre Nosotros | Regalo Experto</title>
    <meta name="description" content="Conoce al equipo detrás de Regalo Experto y nuestra pasión por encontrar los mejores artículos y coleccionables.">
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
                <li><a href="articulos.html" class="hover:text-blue-600 transition-colors">Artículos</a></li>
                <li><a href="sobre-nosotros.html" class="text-blue-700 transition-colors">Sobre Nosotros</a></li>
                <li><a href="contacto.html" class="hover:text-blue-600 transition-colors">Contacto</a></li>
            </ul>
        </nav>
    </header>

    <main class="flex-grow max-w-4xl mx-auto px-4 py-16">
        <article class="bg-white p-8 md:p-12 rounded-2xl shadow-sm border border-gray-100">
            <h1 class="text-4xl font-extrabold text-gray-900 mb-6">Nuestra Historia</h1>
            
            <div class="prose prose-lg text-gray-600">
                <p class="mb-6 leading-relaxed">
                    Hola, somos el equipo detrás de <strong>Regalo Experto</strong>. Todo comenzó porque nos dábamos cuenta de lo difícil que era encontrar regalos originales y productos de colección de buena calidad en internet. Muchas veces comprábamos artículos basados en personajes famosos (como nuestro querido Stitch) y nos llevábamos una gran decepción al recibir imitaciones baratas.
                </p>
                <p class="mb-6 leading-relaxed">
                    Nos dimos cuenta de que la mayoría de las recomendaciones en internet son automatizadas. Decidimos cambiar eso, creando reseñas honestas y detalladas de los mejores regalos y artículos de colección.
                </p>

                <h2 class="text-2xl font-bold text-gray-900 mt-10 mb-4">Nuestro Proceso de Selección</h2>
                <ul class="list-disc pl-6 space-y-3 mb-8">
                    <li><strong>Calidad primero:</strong> Solo analizamos productos que están fabricados con buenos materiales.</li>
                    <li><strong>Fidelidad al diseño:</strong> Nos aseguramos de que el diseño respete las características originales.</li>
                    <li><strong>Valor por dinero:</strong> El precio debe justificar lo que recibes.</li>
                </ul>

                <p class="mt-8 font-medium italic">
                    Nuestra misión es sencilla: ayudarte a comprar el regalo perfecto, ya sea para ti o para esa persona especial.
                </p>
            </div>
        </article>
    </main>

    <footer class="bg-slate-900 text-slate-300 py-12 border-t-4 border-blue-600 mt-12">
        <div class="max-w-6xl mx-auto px-4 text-center text-xs text-slate-500">
            &copy; 2024 RegaloExperto. Todos los derechos reservados.
        </div>
    </footer>
</body>
</html>
"@

$htmlContacto = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contacto | Regalo Experto</title>
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
                <li><a href="articulos.html" class="hover:text-blue-600 transition-colors">Artículos</a></li>
                <li><a href="sobre-nosotros.html" class="hover:text-blue-600 transition-colors">Sobre Nosotros</a></li>
                <li><a href="contacto.html" class="text-blue-700 transition-colors">Contacto</a></li>
            </ul>
        </nav>
    </header>

    <main class="flex-grow max-w-2xl mx-auto px-4 py-16 w-full">
        <div class="bg-white p-8 md:p-12 rounded-2xl shadow-sm border border-gray-100">
            <h1 class="text-4xl font-extrabold text-gray-900 mb-6">Ponte en Contacto</h1>
            <p class="text-gray-600 mb-8">¿Tienes alguna duda sobre nuestras reseñas? ¿Quieres que analicemos algún producto de colección en especial? Escríbenos.</p>
            
            <form action="#" method="POST" class="space-y-6">
                <div>
                    <label for="nombre" class="block text-sm font-medium text-gray-700 mb-1">Nombre Completo</label>
                    <input type="text" id="nombre" name="nombre" class="w-full px-4 py-3 rounded-lg border border-gray-300 focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition shadow-sm" required>
                </div>
                <div>
                    <label for="email" class="block text-sm font-medium text-gray-700 mb-1">Correo Electrónico</label>
                    <input type="email" id="email" name="email" class="w-full px-4 py-3 rounded-lg border border-gray-300 focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition shadow-sm" required>
                </div>
                <div>
                    <label for="mensaje" class="block text-sm font-medium text-gray-700 mb-1">Mensaje</label>
                    <textarea id="mensaje" name="mensaje" rows="5" class="w-full px-4 py-3 rounded-lg border border-gray-300 focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition shadow-sm" required></textarea>
                </div>
                <button type="submit" class="w-full bg-blue-600 hover:bg-blue-700 text-white font-bold py-4 px-6 rounded-lg shadow-md transition duration-300">
                    Enviar Mensaje
                </button>
            </form>
        </div>
    </main>
</body>
</html>
"@

$htmlPrivacidad = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Política de Privacidad | Regalo Experto</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; }
    </style>
</head>
<body class="bg-gray-50 text-gray-800 flex flex-col min-h-screen">
    <header class="bg-white shadow-sm sticky top-0 z-50">
        <nav class="max-w-6xl mx-auto px-4 py-5 flex justify-between items-center">
            <a href="index.html" class="flex items-center gap-2"><span class="font-extrabold text-2xl text-blue-800">Regalo<span class="text-blue-500">Experto</span></span></a>
            <a href="index.html" class="text-blue-600 font-medium hover:underline">Volver al inicio</a>
        </nav>
    </header>

    <main class="flex-grow max-w-3xl mx-auto px-4 py-16">
        <article class="bg-white p-8 md:p-12 rounded-2xl shadow-sm border border-gray-100 prose text-gray-600">
            <h1 class="text-3xl font-extrabold text-gray-900 mb-6">Política de Privacidad y Cookies</h1>
            <p><strong>Última actualización:</strong> 25 de abril de 2026</p>
            
            <h2 class="text-xl font-bold text-gray-900 mt-8 mb-4">1. Política de Afiliados (Google AdSense y Mercado Libre)</h2>
            <p>Este sitio web participa en programas de publicidad y afiliación. Mostramos anuncios gestionados por Google AdSense. Además, participamos en el programa de afiliados de Mercado Libre. Esto significa que si haces clic en un enlace de producto y realizas una compra, podríamos recibir una pequeña comisión sin ningún costo extra para ti.</p>

            <h2 class="text-xl font-bold text-gray-900 mt-8 mb-4">2. Uso de Cookies</h2>
            <p>Utilizamos cookies propias y de terceros (como Google AdSense y Google Analytics) para:</p>
            <ul>
                <li>Mostrar anuncios personalizados según tus intereses.</li>
                <li>Analizar el tráfico de nuestra web de forma anónima.</li>
            </ul>
            <p>Puedes configurar tu navegador para rechazar las cookies, aunque esto podría afectar el funcionamiento de algunas partes del sitio web.</p>
        </article>
    </main>
</body>
</html>
"@

Set-Content -Path "c:\Users\S4tehn\Documents\Pagina\sobre-nosotros.html" -Value $htmlSobreNosotros -Encoding UTF8
Set-Content -Path "c:\Users\S4tehn\Documents\Pagina\contacto.html" -Value $htmlContacto -Encoding UTF8
Set-Content -Path "c:\Users\S4tehn\Documents\Pagina\politica-privacidad.html" -Value $htmlPrivacidad -Encoding UTF8
Write-Host "Páginas informativas actualizadas"
