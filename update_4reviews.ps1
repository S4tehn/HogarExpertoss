$ErrorActionPreference = 'Stop'

$newReviewsHtml = @"
<h2 class="text-2xl font-bold text-gray-900 mt-10 mb-6">Opiniones Destacadas de Compradores</h2>
<div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-10">
    <!-- Review 1 -->
    <div class="bg-gray-50 p-6 rounded-xl border border-gray-200 shadow-sm hover:shadow-md transition">
        <div class="flex items-center justify-between mb-4">
            <div class="flex items-center space-x-1 text-yellow-400">
                $("<svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>" * 5)
            </div>
            <span class="text-[10px] text-gray-500 font-semibold bg-gray-200 px-2 py-1 rounded">Compra verificada</span>
        </div>
        <p class="text-sm text-gray-700 italic">"¡Excelente producto! Llegó a tiempo y en perfectas condiciones. Cumple exactamente con lo que promete la descripción. Sin duda volvería a pedir."</p>
        <p class="text-xs font-bold text-gray-900 mt-3">- María G.</p>
    </div>
    <!-- Review 2 -->
    <div class="bg-gray-50 p-6 rounded-xl border border-gray-200 shadow-sm hover:shadow-md transition">
        <div class="flex items-center justify-between mb-4">
            <div class="flex items-center space-x-1 text-yellow-400">
                $("<svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>" * 5)
            </div>
            <span class="text-[10px] text-gray-500 font-semibold bg-gray-200 px-2 py-1 rounded">Compra verificada</span>
        </div>
        <p class="text-sm text-gray-700 italic">"La mejor inversión para mi hogar. Relación calidad-precio insuperable. Se nota que los materiales son muy buenos y resistentes al uso diario."</p>
        <p class="text-xs font-bold text-gray-900 mt-3">- Roberto M.</p>
    </div>
    <!-- Review 3 -->
    <div class="bg-gray-50 p-6 rounded-xl border border-gray-200 shadow-sm hover:shadow-md transition">
        <div class="flex items-center justify-between mb-4">
            <div class="flex items-center space-x-1 text-yellow-400">
                $("<svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>" * 5)
            </div>
            <span class="text-[10px] text-gray-500 font-semibold bg-gray-200 px-2 py-1 rounded">Compra verificada</span>
        </div>
        <p class="text-sm text-gray-700 italic">"Tenía mis dudas al principio, pero después de usarlo varias semanas estoy muy satisfecho. Totalmente recomendado si buscas algo que dure."</p>
        <p class="text-xs font-bold text-gray-900 mt-3">- Ana Lucía</p>
    </div>
    <!-- Review 4 -->
    <div class="bg-gray-50 p-6 rounded-xl border border-gray-200 shadow-sm hover:shadow-md transition">
        <div class="flex items-center justify-between mb-4">
            <div class="flex items-center space-x-1 text-yellow-400">
                $("<svg class='w-4 h-4' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>" * 4)
                <svg class='w-4 h-4 text-gray-300' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>
            </div>
            <span class="text-[10px] text-gray-500 font-semibold bg-gray-200 px-2 py-1 rounded">Compra verificada</span>
        </div>
        <p class="text-sm text-gray-700 italic">"Todo muy bien empacado. Llevo un mes de uso y sigue cumpliendo bien. Le doy 4 estrellas solo porque la paquetería tardó un día más de lo esperado."</p>
        <p class="text-xs font-bold text-gray-900 mt-3">- Carlos T.</p>
    </div>
</div>
`n`n<!-- Botón de afiliado 2 -->
"@

$files = Get-ChildItem "c:\Users\S4tehn\Documents\Pagina\articulo-*.html"
foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    
    # 1. Eliminar bloque antiguo de opiniones (sea de 1 o de 4) si existe, para limpiar el código
    $content = $content -replace '(?s)<h2 class="text-2xl font-bold text-gray-900 mt-10 mb-6">Opiniones Destacadas.*?</div>\s*(?=<h2|<!--)', ''
    
    # 2. Insertar el nuevo bloque de 4 opiniones antes del "Botón de afiliado 2"
    $content = $content -replace '<!-- Botón de afiliado 2 -->', $newReviewsHtml
    
    Set-Content $file.FullName -Value $content -Encoding UTF8
    Write-Host "Completado: $($file.Name)"
}
