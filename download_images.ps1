$ErrorActionPreference = 'Stop'

for ($i = 1; $i -le 16; $i++) {
    Write-Host "Procesando artículo $i..."
    $file = "c:\Users\S4tehn\Documents\Pagina\articulo-$i.html"
    if (-Not (Test-Path $file)) {
        Write-Host "No existe $file"
        continue
    }
    
    $html = Get-Content $file -Raw -Encoding UTF8
    
    if ($html -match 'href="(https://meli\.la/[^"]+)"') {
        $meliLink = $Matches[1]
        Write-Host "Link encontrado: $meliLink"
        
        try {
            $response = Invoke-WebRequest -Uri $meliLink -UseBasicParsing
            if ($response.Content -match 'property="og:image"\s+content="([^"]+)"') {
                $imgUrl = $Matches[1]
                Write-Host "Imagen encontrada: $imgUrl"
                
                $ext = [System.IO.Path]::GetExtension($imgUrl)
                if (-not $ext) { $ext = ".webp" }
                $ext = $ext.Split('?')[0]
                
                $imgName = "img_producto$i$ext"
                Invoke-WebRequest -Uri $imgUrl -OutFile "c:\Users\S4tehn\Documents\Pagina\$imgName"
                
                $filesToUpdate = @($file, "c:\Users\S4tehn\Documents\Pagina\index.html", "c:\Users\S4tehn\Documents\Pagina\articulos.html")
                foreach ($f in $filesToUpdate) {
                    if (Test-Path $f) {
                        $fContent = Get-Content $f -Raw -Encoding UTF8
                        $fContent = [regex]::Replace($fContent, "img_producto$i\.(png|jpg|jpeg|webp)", $imgName)
                        Set-Content $f -Value $fContent -Encoding UTF8
                    }
                }
                Write-Host "Éxito con producto $i"
            } else {
                Write-Host "No se encontró og:image en $meliLink"
            }
        } catch {
            Write-Host "Error al descargar ${meliLink}: $_"
        }
    } else {
        Write-Host "No se encontró link de meli.la en $file"
    }
}
