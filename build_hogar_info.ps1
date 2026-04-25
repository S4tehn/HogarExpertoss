$ErrorActionPreference = 'Stop'
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)

$htmlSobreNosotros = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sobre Nosotros | Hogar Experto</title>
    <meta name="description" content="Conoce al equipo detrás de Hogar Experto.">
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
                <li><a href="articulos.html" class="hover:text-emerald-600 transition-colors">Artículos</a></li>
                <li><a href="sobre-nosotros.html" class="text-emerald-700 transition-colors">Sobre Nosotros</a></li>
                <li><a href="contacto.html" class="hover:text-emerald-600 transition-colors">Contacto</a></li>
            </ul>
        </nav>
    </header>

    <main class="flex-grow max-w-4xl mx-auto px-4 py-16 w-full">
        <article class="bg-white p-8 md:p-12 rounded-2xl shadow-sm border border-gray-100">
            <h1 class="text-4xl font-extrabold text-gray-900 mb-6">Nuestra Historia</h1>
            
            <div class="prose prose-lg text-gray-600">
                <p class="mb-6 leading-relaxed">
                    Hola, somos el equipo detrás de <strong>Hogar Experto</strong>. Todo comenzó cuando nos mudamos a nuestro primer departamento y gastamos una pequeña fortuna en un set de sartenes "premium" que prometía maravillas. ¿El resultado? A los tres meses, el teflón estaba arruinado y los mangos estaban flojos.
                </p>
                <p class="mb-6 leading-relaxed">
                    Nos dimos cuenta de que la mayoría de las recomendaciones en internet son simplemente descripciones copiadas directamente de las cajas de los fabricantes. Decidimos cambiar eso probando y analizando herramientas de cocina, desde organizadores hasta baterías de cocina, con total honestidad.
                </p>
            </div>
        </article>
    </main>

    <footer class="bg-slate-900 text-slate-300 py-12 border-t-4 border-emerald-600">
        <div class="max-w-6xl mx-auto px-4 text-center text-xs text-slate-500">
            &copy; 2024 Hogar Experto. Todos los derechos reservados.
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
    <title>Contacto | Hogar Experto</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; }
    </style>
</head>
<body class="bg-gray-50 text-gray-800 flex flex-col min-h-screen">
    <header class="bg-white shadow-sm sticky top-0 z-50">
        <nav class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 py-5 flex justify-between items-center">
            <a href="index.html" class="flex items-center gap-2"><span class="font-extrabold text-2xl text-emerald-800">Hogar<span class="text-emerald-500">Experto</span></span></a>
            <ul class="hidden md:flex space-x-8 text-sm font-semibold text-gray-600">
                <li><a href="index.html" class="hover:text-emerald-600 transition-colors">Inicio</a></li>
                <li><a href="articulos.html" class="hover:text-emerald-600 transition-colors">Artículos</a></li>
                <li><a href="sobre-nosotros.html" class="hover:text-emerald-600 transition-colors">Sobre Nosotros</a></li>
                <li><a href="contacto.html" class="text-emerald-700 transition-colors">Contacto</a></li>
            </ul>
        </nav>
    </header>

    <main class="flex-grow max-w-2xl mx-auto px-4 py-16 w-full">
        <div class="bg-white p-8 rounded-2xl shadow-sm border border-gray-100">
            <h1 class="text-4xl font-extrabold mb-6">Contacto</h1>
            <p class="text-gray-600 mb-8">¿Tienes dudas sobre una batería de cocina? ¡Escríbenos!</p>
            <form class="space-y-6">
                <input type="text" placeholder="Nombre" class="w-full px-4 py-3 rounded-lg border border-gray-300" required>
                <input type="email" placeholder="Email" class="w-full px-4 py-3 rounded-lg border border-gray-300" required>
                <textarea rows="5" placeholder="Mensaje" class="w-full px-4 py-3 rounded-lg border border-gray-300" required></textarea>
                <button type="submit" class="w-full bg-emerald-600 hover:bg-emerald-700 text-white font-bold py-4 rounded-lg">Enviar</button>
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
    <title>Política de Privacidad | Hogar Experto</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; }
    </style>
</head>
<body class="bg-gray-50 text-gray-800 flex flex-col min-h-screen">
    <header class="bg-white shadow-sm sticky top-0 z-50">
        <nav class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 py-5 flex justify-between items-center">
            <a href="index.html" class="flex items-center gap-2"><span class="font-extrabold text-2xl text-emerald-800">Hogar<span class="text-emerald-500">Experto</span></span></a>
            <a href="index.html" class="text-emerald-600 font-medium hover:underline">Volver al inicio</a>
        </nav>
    </header>

    <main class="flex-grow max-w-4xl mx-auto px-4 py-16 w-full">
        <article class="bg-white p-8 md:p-12 rounded-2xl shadow-sm border border-gray-100 prose text-gray-600 max-w-none">
            <h1 class="text-4xl font-extrabold text-gray-900 mb-6">Política de Privacidad Integral</h1>
            <p><strong>Última actualización:</strong> 25 de abril de 2026</p>
            
            <p>En Hogar Experto, la privacidad de nuestros visitantes es de extrema importancia para nosotros. Este documento de política de privacidad detalla los tipos de información personal que se recibe y recopila, y cómo se utiliza.</p>

            <h2 class="text-2xl font-bold text-gray-900 mt-8 mb-4">1. Recopilación de Información de Rutina</h2>
            <p>Todos los servidores web rastrean información básica sobre sus visitantes. Esta información incluye, entre otros, direcciones IP, detalles del navegador, marcas de tiempo y páginas de referencia. Ninguna de esta información puede identificar personalmente a visitantes específicos de este sitio. La información se rastrea con fines de administración y mantenimiento habituales.</p>

            <h2 class="text-2xl font-bold text-gray-900 mt-8 mb-4">2. Cookies y Balizas Web (Web Beacons)</h2>
            <p>Cuando es necesario, Hogar Experto utiliza cookies para almacenar información sobre las preferencias de los visitantes e historial con el fin de servir mejor al visitante y/o presentarle contenido personalizado.</p>
            
            <h3 class="text-xl font-bold text-gray-800 mt-6 mb-3">Programa de Google AdSense</h3>
            <p>Los socios publicitarios y otros terceros, incluido Google, pueden utilizar cookies, scripts y/o balizas web para realizar un seguimiento de los visitantes en nuestro sitio a fin de mostrar anuncios y otra información útil (por ejemplo, Google usa cookies de DART para mostrar anuncios basados en sus visitas a nuestro sitio web y a otros sitios de Internet). Dicho seguimiento lo realizan directamente los terceros a través de sus propios servidores y están sujetos a sus propias políticas de privacidad. Puedes inhabilitar el uso de la cookie de DART visitando la política de privacidad de la red de contenido y anuncios de Google.</p>

            <h2 class="text-2xl font-bold text-gray-900 mt-8 mb-4">3. Declaración de Afiliación (Mercado Libre)</h2>
            <p>Hogar Experto es participante activo en el Programa de Afiliados de Mercado Libre. Este es un programa de publicidad para afiliados diseñado para proporcionar un medio para que los sitios ganen comisiones por publicidad y enlaces hacia los productos de Mercado Libre (meli.la). Esto significa que si haces clic en un enlace provisto en uno de nuestros artículos y realizas una compra, podríamos percibir una comisión monetaria sin costo adicional alguno para ti. Estas comisiones nos ayudan a mantener el sitio web operativo.</p>

            <h2 class="text-2xl font-bold text-gray-900 mt-8 mb-4">4. Derechos ARCO</h2>
            <p>De acuerdo con la legislación vigente, tienes el derecho de Acceder, Rectificar, Cancelar u Oponerte (Derechos ARCO) al uso de tus datos personales si nos has proporcionado información a través de formularios de contacto. Para ejercer estos derechos, comunícate con nosotros a través de nuestra página de Contacto.</p>

            <h2 class="text-2xl font-bold text-gray-900 mt-8 mb-4">5. Seguridad de los Datos</h2>
            <p>Implementamos una variedad de medidas de seguridad para mantener la seguridad de tu información personal cuando la ingresas, la envías o accedes a ella. Sin embargo, recuerda que ningún método de transmisión a través de Internet, o método de almacenamiento electrónico, es 100% seguro.</p>
        </article>
    </main>
    <footer class="bg-slate-900 text-slate-300 py-12 mt-12 border-t-4 border-emerald-600">
        <div class="max-w-6xl mx-auto px-4 text-center text-xs text-slate-500">
            &copy; 2024 Hogar Experto. Todos los derechos reservados.
        </div>
    </footer>
</body>
</html>
"@

[System.IO.File]::WriteAllText("c:\Users\S4tehn\Documents\Pagina\sobre-nosotros.html", $htmlSobreNosotros, $utf8NoBom)
[System.IO.File]::WriteAllText("c:\Users\S4tehn\Documents\Pagina\contacto.html", $htmlContacto, $utf8NoBom)
[System.IO.File]::WriteAllText("c:\Users\S4tehn\Documents\Pagina\politica-privacidad.html", $htmlPrivacidad, $utf8NoBom)
Write-Host "Páginas informativas generadas correctamente en UTF-8"
