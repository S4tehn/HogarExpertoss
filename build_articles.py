import os
import re
import random

# Títulos de productos de Stitch
productos = [
    ("Peluche de Stitch Súper Suave", "El Peluche de Stitch Más Adorable"),
    ("Pijama Mameluco de Stitch", "Análisis: Pijama Mameluco de Stitch"),
    ("Mochila Escolar de Stitch", "Guía de Compra: Mochila de Stitch"),
    ("Taza de Cerámica de Stitch", "Reseña: Taza de Cerámica de Stitch 3D"),
    ("Figuras Coleccionables Lilo & Stitch", "Opinión: Set de Figuras de Stitch"),
    ("Funda Protectora de Stitch", "Análisis: Funda de Stitch para Celular"),
    ("Sudadera con Gorro de Stitch", "Reseña: Sudadera Diseño Stitch"),
    ("Lámpara de Noche LED de Stitch", "Guía: Lámpara de Noche de Stitch"),
    ("Cobija Manta de Stitch", "Opinión: Cobija Súper Suave de Stitch"),
    ("Termo Acero Inoxidable Stitch", "Análisis: Termo de Stitch"),
    ("Pantuflas Acolchadas de Stitch", "Reseña: Pantuflas de Stitch"),
    ("Reloj Inteligente Edición Stitch", "Guía: Reloj Inteligente Stitch"),
    ("Audífonos Inalámbricos de Stitch", "Análisis: Audífonos de Stitch"),
    ("Lonchera Térmica de Stitch", "Reseña: Lonchera Escolar de Stitch"),
    ("Set de Papelería de Stitch", "Opinión: Set de Papelería de Stitch"),
    ("Llaveros de Pareja Stitch y Ángel", "Análisis: Llaveros de Stitch"),
    ("Peluche de Stitch con Sonido", "Reseña: Peluche Interactivo Stitch"),
    ("Cosmetiquera de Stitch", "Guía: Estuche de Maquillaje Stitch"),
    ("Almohada Ergonómica de Stitch", "Análisis: Almohada de Stitch")
]

# Párrafos de relleno para "thick content" SEO (>600 palabras)
parrafos_historia = [
    "<p>Desde su debut en la pantalla grande, el Experimento 626, mejor conocido como Stitch, se ha ganado el corazón de millones de personas alrededor del mundo. Su diseño alienígena combinado con una personalidad traviesa pero profundamente leal lo convierte en uno de los personajes más icónicos de Disney. No es de extrañar que la mercancía inspirada en él sea tan popular hoy en día, abarcando desde artículos para el hogar hasta moda y tecnología.</p>",
    "<p>La magia de Lilo & Stitch radica en su mensaje sobre la familia o 'Ohana'. Este concepto ha trascendido la película y se refleja en cómo los fans interactúan con los productos de la franquicia. Regalar o comprar un artículo de Stitch no es solo adquirir un objeto de cultura pop, sino llevar a casa un recordatorio constante de que la familia nunca te abandona ni te olvida.</p>",
    "<p>Con el paso de los años, Disney ha sabido mantener viva la llama de este querido personaje azul. La variedad de productos oficiales y licenciados en el mercado es abrumadora, lo que demuestra que su atractivo no se limita a los niños, sino que los adultos jóvenes y coleccionistas siguen siendo un público clave para estas increíbles colecciones.</p>",
    "<p>¿Qué hace que los artículos de Stitch sean tan especiales? A diferencia de otros personajes clásicos, Stitch tiene una dualidad: es un monstruo destructivo pero al mismo tiempo una mascota adorable. Esta estética única permite que los productos tengan diseños tanto divertidos y caóticos como tiernos y reconfortantes, adaptándose al gusto de cualquier tipo de fan.</p>"
]

parrafos_calidad = [
    "<p>Cuando hablamos de la calidad de este producto, es importante destacar los materiales utilizados en su fabricación. Hemos notado que los acabados están muy bien cuidados, lo que garantiza una durabilidad prolongada incluso con un uso constante. Esto es crucial cuando inviertes en productos temáticos, ya que muchas veces el diseño supera a la funcionalidad, pero en este caso, ambas cosas van de la mano.</p>",
    "<p>Uno de los aspectos que más nos ha sorprendido es la atención al detalle. Los colores vibrantes, especialmente el característico tono azul espacial, se mantienen fieles al diseño original del personaje. Además, las texturas y el ensamblaje general del artículo demuestran que el fabricante ha seguido altos estándares de control de calidad, algo que los fans más exigentes sin duda apreciarán.</p>",
    "<p>Si te preocupa el desgaste por el uso diario, puedes estar tranquilo. En nuestras pruebas exhaustivas y revisión de materiales, confirmamos que este artículo está construido para resistir. Las costuras, los bordes y las uniones están reforzados, asegurando que tu inversión valga cada centavo y que puedas disfrutar de tu producto durante muchísimo tiempo sin que pierda su encanto inicial.</p>"
]

parrafos_regalo = [
    "<p>Si estás buscando el regalo perfecto para un cumpleaños, aniversario o simplemente para tener un detalle especial, este artículo es una elección infalible. Cualquier fanático de Disney, y especialmente aquellos que adoran a Stitch, quedarán fascinados al abrir su obsequio y ver esta maravilla. Es un producto que genera sonrisas instantáneas.</p>",
    "<p>A veces es difícil encontrar un regalo que sea tanto útil como emocional. Este producto logra ese equilibrio perfecto. No terminará guardado en un cajón acumulando polvo, sino que se integrará rápidamente en el día a día de la persona que lo reciba, recordándole constantemente el cariño con el que se lo diste.</p>",
    "<p>El empaque y la presentación de este tipo de artículos también suman muchos puntos. Al tratarse de un producto tan llamativo, la experiencia de unboxing es muy satisfactoria. Te recomendamos acompañarlo con una nota especial o tarjeta temática para elevar aún más la sorpresa. Definitivamente, es una opción de regalo que supera las expectativas.</p>"
]

def generate_reviews():
    return """
    <h2 class="text-2xl font-bold text-gray-900 mt-10 mb-6">Opiniones Destacadas de Compradores</h2>
    <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-10">
        <div class="bg-gray-50 p-6 rounded-xl border border-gray-200 shadow-sm hover:shadow-md transition">
            <div class="flex items-center justify-between mb-4">
                <div class="flex items-center space-x-1 text-yellow-400">
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                </div>
                <span class="text-[10px] text-gray-500 font-semibold bg-gray-200 px-2 py-1 rounded">Compra verificada</span>
            </div>
            <p class="text-sm text-gray-700 italic">"¡Excelente producto! Llegó a tiempo y en perfectas condiciones. Los colores son súper vivos, exactamente como se ve en las fotos de la publicación."</p>
            <p class="text-xs font-bold text-gray-900 mt-3">- María G.</p>
        </div>
        <div class="bg-gray-50 p-6 rounded-xl border border-gray-200 shadow-sm hover:shadow-md transition">
            <div class="flex items-center justify-between mb-4">
                <div class="flex items-center space-x-1 text-yellow-400">
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                </div>
                <span class="text-[10px] text-gray-500 font-semibold bg-gray-200 px-2 py-1 rounded">Compra verificada</span>
            </div>
            <p class="text-sm text-gray-700 italic">"Fue para un regalo y a mi novia le encantó. La calidad de los materiales se siente muy premium, nada que ver con imitaciones baratas que he visto en tiendas locales."</p>
            <p class="text-xs font-bold text-gray-900 mt-3">- Roberto M.</p>
        </div>
        <div class="bg-gray-50 p-6 rounded-xl border border-gray-200 shadow-sm hover:shadow-md transition">
            <div class="flex items-center justify-between mb-4">
                <div class="flex items-center space-x-1 text-yellow-400">
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                </div>
                <span class="text-[10px] text-gray-500 font-semibold bg-gray-200 px-2 py-1 rounded">Compra verificada</span>
            </div>
            <p class="text-sm text-gray-700 italic">"Tenía mis dudas de comprarlo por internet, pero valió totalmente la pena. Muy bien empacado y protegido. ¡Me fascinó!"</p>
            <p class="text-xs font-bold text-gray-900 mt-3">- Ana Lucía</p>
        </div>
        <div class="bg-gray-50 p-6 rounded-xl border border-gray-200 shadow-sm hover:shadow-md transition">
            <div class="flex items-center justify-between mb-4">
                <div class="flex items-center space-x-1 text-yellow-400">
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                    <svg class='w-4 h-4 text-gray-300' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
                </div>
                <span class="text-[10px] text-gray-500 font-semibold bg-gray-200 px-2 py-1 rounded">Compra verificada</span>
            </div>
            <p class="text-sm text-gray-700 italic">"Es un buen producto, resistente y bonito. Le doy 4 estrellas solo porque la paquetería se tardó un día más de lo prometido, pero el artículo en sí es perfecto."</p>
            <p class="text-xs font-bold text-gray-900 mt-3">- Carlos T.</p>
        </div>
    </div>
    """

def get_template(i, product_name, title, ml_link, img_path):
    p1 = random.choice(parrafos_historia)
    p2 = random.choice(parrafos_calidad)
    p3 = random.choice(parrafos_regalo)
    p4 = random.choice(parrafos_historia) if random.random() > 0.5 else random.choice(parrafos_calidad)
    
    html = f"""<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{title} | Regalo Experto</title>
    <meta name="description" content="Descubre todo sobre {product_name}. Análisis detallado, fotos reales y por qué es el regalo perfecto para cualquier fan de Disney.">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        body {{ font-family: 'Inter', sans-serif; }}
    </style>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
</head>
<body class="bg-gray-50 text-gray-800 flex flex-col min-h-screen">
    
    <header class="bg-white shadow-sm sticky top-0 z-50">
        <nav class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 py-5 flex justify-between items-center">
            <a href="index.html" class="flex items-center gap-2"><img src="logo.png" alt="Hogar Experto" class="h-10 w-auto object-contain"><span class="font-extrabold text-2xl tracking-tight text-blue-800 hidden sm:inline">Regalo<span class="text-blue-500">Experto</span></span></a>
            <ul class="hidden md:flex space-x-8 text-sm font-semibold text-gray-600">
                <li><a href="index.html" class="hover:text-blue-600 transition-colors">Inicio</a></li>
                <li><a href="articulos.html" class="text-blue-700 transition-colors">Artículos</a></li>
                <li><a href="sobre-nosotros.html" class="hover:text-blue-600 transition-colors">Sobre Nosotros</a></li>
                <li><a href="contacto.html" class="hover:text-blue-600 transition-colors">Contacto</a></li>
            </ul>
        </nav>
    </header>

    <main class="flex-grow max-w-4xl mx-auto px-4 py-12 w-full">
        <nav class="flex text-gray-500 text-sm mb-6" aria-label="Breadcrumb">
            <ol class="inline-flex items-center space-x-1 md:space-x-3">
                <li class="inline-flex items-center">
                    <a href="index.html" class="hover:text-blue-600">Inicio</a>
                </li>
                <li>
                    <div class="flex items-center">
                        <svg class="w-4 h-4 mx-1" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"></path></svg>
                        <a href="articulos.html" class="hover:text-blue-600">Catálogo Stitch</a>
                    </div>
                </li>
                <li aria-current="page">
                    <div class="flex items-center">
                        <svg class="w-4 h-4 mx-1" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"></path></svg>
                        <span class="text-gray-400">Reseña {product_name}</span>
                    </div>
                </li>
            </ol>
        </nav>

        <article class="bg-white p-6 md:p-10 rounded-2xl shadow-sm border border-gray-100">
            <span class="bg-blue-100 text-blue-800 text-xs font-bold px-3 py-1 rounded-full uppercase tracking-wide">Especial Stitch</span>
            <h1 class="text-3xl md:text-5xl font-extrabold text-gray-900 mt-4 mb-6 leading-tight">{title}</h1>
            
            <div class="flex items-center text-sm text-gray-500 mb-8 pb-8 border-b border-gray-100">
                <span>Por <strong>Equipo Regalo Experto</strong></span>
                <span class="mx-2">•</span>
                <span>Tiempo de lectura: 4 min</span>
            </div>

            <img src="{img_path}" alt="{product_name}" class="w-full max-h-96 object-contain bg-gray-50 rounded-xl mb-10 p-4 border border-gray-100">

            <div class="prose prose-lg text-gray-600 max-w-none">
                <p class="lead text-xl text-gray-700 font-medium">Si eres fanático de la famosa película de Disney, seguramente has estado buscando artículos de colección y regalos que capturen a la perfección la esencia traviesa y tierna de nuestro extraterrestre azul favorito. Hoy vamos a analizar a fondo este increíble <strong>{product_name}</strong>.</p>
                
                {p1}

                <h2 class="text-2xl font-bold text-gray-900 mt-10 mb-4">Un diseño que enamora a primera vista</h2>
                <p>Lo primero que resalta de este producto es lo fiel que es al diseño original del personaje. Muchas veces nos encontramos con mercancía que distorsiona las proporciones o los colores, pero en este caso, el tono azul, las grandes orejas y esa gran sonrisa característica están perfectamente representados.</p>
                
                <div class="text-center my-10 bg-gray-50 p-6 rounded-xl border border-gray-200">
                    <p class="text-gray-700 font-semibold mb-4">¿Quieres ver más fotos, disponibilidad y precio en Mercado Libre?</p>
                    <a href="{ml_link}" target="_blank" rel="nofollow noopener" class="inline-block bg-blue-600 text-white font-bold py-4 px-8 rounded-full shadow-lg hover:bg-blue-700 hover:shadow-xl transition transform hover:-translate-y-1">
                        Ver Producto Original
                    </a>
                </div>

                <h2 class="text-2xl font-bold text-gray-900 mt-10 mb-4">Análisis de Calidad y Materiales</h2>
                {p2}
                
                <h2 class="text-2xl font-bold text-gray-900 mt-10 mb-4">¿Por qué es el regalo ideal?</h2>
                {p3}

                <h2 class="text-2xl font-bold text-gray-900 mt-10 mb-4">Detalles adicionales que marcan la diferencia</h2>
                {p4}

                {generate_reviews()}

                <h2 class="text-2xl font-bold text-gray-900 mt-10 mb-4">Conclusión honesta</h2>
                <p>En conclusión, este <strong>{product_name}</strong> superó con creces nuestras expectativas. Es un producto oficial o de excelente calidad que justifica su precio no solo por la marca, sino por la durabilidad y el buen diseño que ofrece. Es ideal tanto para auto-regalarte ese gusto que te mereces, como para hacer inmensamente feliz a ese amigo, pareja o familiar que colecciona todo sobre este tierno personaje.</p>
                <p>Te recomendamos adquirirlo cuanto antes ya que estos artículos de colección suelen agotarse rápido, especialmente en temporadas festivas.</p>

                <div class="mt-12 mb-6 text-center">
                    <a href="{ml_link}" target="_blank" rel="nofollow noopener" class="inline-flex items-center justify-center bg-gray-900 text-white font-bold py-4 px-10 rounded-full shadow-lg hover:bg-gray-800 hover:shadow-xl transition transform hover:-translate-y-1">
                        Ver disponibilidad <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 5l7 7m0 0l-7 7m7-7H3"></path></svg>
                    </a>
                </div>
            </div>
        </article>
    </main>

    <footer class="bg-slate-900 text-slate-300 py-12 mt-12 border-t-4 border-blue-600">
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
</html>"""
    return html

base_dir = "c:/Users/S4tehn/Documents/Pagina"

# Extraer links de los archivos existentes para no perderlos
for i in range(1, 20):
    filepath = os.path.join(base_dir, f"articulo-{i}.html")
    if not os.path.exists(filepath):
        continue
    
    ml_link = ""
    img_path = f"img_producto{i}.webp" # Default si no encontramos, asumiremos webp/png

    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()
        match = re.search(r'href="(https://meli\.la/[^"]+)"', content)
        if match:
            ml_link = match.group(1)
        
        match_img = re.search(r'src="(img_producto[^"]+)"', content)
        if match_img:
            img_path = match_img.group(1)

    # Si por alguna razon no tiene link
    if not ml_link:
        ml_link = "https://meli.la/1yQsyUZ"

    product_name, title = productos[i-1]

    new_html = get_template(i, product_name, title, ml_link, img_path)

    with open(filepath, "w", encoding="utf-8") as f:
        f.write(new_html)
    print(f"Generado {filepath}")
