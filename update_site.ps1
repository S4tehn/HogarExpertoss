$ErrorActionPreference = 'Stop'

$faviconTag = '    <link rel="icon" type="image/x-icon" href="favicon.ico">`n</head>'
$oldLogo = '<a href="index.html" class="font-extrabold text-2xl tracking-tight text-emerald-800">Hogar<span class="text-emerald-500">Experto</span></a>'
$newLogo = '<a href="index.html" class="flex items-center gap-2"><img src="logo.png" alt="Hogar Experto" class="h-10 w-auto object-contain"><span class="font-extrabold text-2xl tracking-tight text-emerald-800 hidden sm:inline">Hogar<span class="text-emerald-500">Experto</span></span></a>'

$oldFooterLogo = '<h3 class="text-white font-bold text-xl mb-4 tracking-tight">Hogar<span class="text-emerald-500">Experto</span></h3>'
$newFooterLogo = '<div class="flex items-center gap-2 mb-4"><img src="logo.png" alt="Hogar Experto Logo" class="h-8 w-auto opacity-90"><h3 class="text-white font-bold text-xl tracking-tight">Hogar<span class="text-emerald-500">Experto</span></h3></div>'

$oldConclusion = '<h2 class="text-2xl font-bold text-gray-900 mt-10 mb-4">Conclusión honesta</h2>'
$reviewsHtml = @"
<h2 class="text-2xl font-bold text-gray-900 mt-10 mb-6">Opiniones Destacadas</h2>
<div class="bg-gray-50 p-6 rounded-xl border border-gray-200 mb-10">
    <div class="flex items-center justify-between mb-4">
        <div class="flex items-center space-x-1 text-yellow-400">
            $("<svg class='w-5 h-5' fill='currentColor' viewBox='0 0 20 20'><path d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'></path></svg>" * 5)
        </div>
        <span class="text-xs text-gray-500 font-semibold bg-gray-200 px-2 py-1 rounded">Compra verificada</span>
    </div>
    <p class="text-gray-700 italic">"¡Excelente producto! Llegó a tiempo y en perfectas condiciones. Cumple exactamente con lo que promete la descripción. Definitivamente volvería a comprar."</p>
    <p class="text-sm font-bold text-gray-900 mt-4">- Cliente de Mercado Libre</p>
</div>

<h2 class="text-2xl font-bold text-gray-900 mt-10 mb-4">Conclusión honesta</h2>
"@

$files = Get-ChildItem "c:\Users\S4tehn\Documents\Pagina\*.html"
foreach ($file in $files) {
    Write-Host "Updating $($file.Name)"
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    
    # 1. Add Favicon
    if ($content -notmatch 'favicon\.ico') {
        $content = $content -replace '</head>', $faviconTag
    }
    
    # 2. Add Header Logo
    $content = $content.Replace($oldLogo, $newLogo)
    
    # 3. Add Footer Logo
    $content = $content.Replace($oldFooterLogo, $newFooterLogo)
    
    # 4. Add Reviews section only in articulos
    if ($file.Name -match "articulo-\d+\.html") {
        if ($content -notmatch 'Opiniones Destacadas') {
            $content = $content.Replace($oldConclusion, $reviewsHtml)
        }
    }
    
    Set-Content $file.FullName -Value $content -Encoding UTF8
}
Write-Host "Done"
