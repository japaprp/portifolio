$ErrorActionPreference = 'Stop'

$desktop = 'C:\Users\Yago Fellipe Amorim\Desktop'
$kit = Join-Path $desktop 'KIT_COMERCIAL_FINAL_20260320'
$pdfBase = Join-Path $desktop 'portifolio\comercial\pdf'
$entrega = Join-Path $desktop 'DIRECAO_FINAL_COMERCIAL_20260320'
$edge = 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'

Copy-Item (Join-Path $kit '01_AMORIM_PDV_MOBILE\*.jpeg') (Join-Path $pdfBase 'assets\amorim') -Force

# The flattened files at the root of the final kit are the latest approved revisions.
Copy-Item (Join-Path $kit 'lanchonete-01-hero.jpeg') (Join-Path $pdfBase 'assets\lanchonete\01-hero.jpeg') -Force
Copy-Item (Join-Path $kit 'lanchonete-02-blocos-informativos.jpeg') (Join-Path $pdfBase 'assets\lanchonete\02-blocos-informativos.jpeg') -Force
Copy-Item (Join-Path $kit 'lanchonete-03-resumo-comercial.jpeg') (Join-Path $pdfBase 'assets\lanchonete\03-resumo-comercial.jpeg') -Force

Copy-Item (Join-Path $kit 'hortfruit-01-hero.jpeg') (Join-Path $pdfBase 'assets\hortfruit\01-hero.jpeg') -Force
Copy-Item (Join-Path $kit 'hortfruit-02-blocos-informativos.jpeg') (Join-Path $pdfBase 'assets\hortfruit\02-blocos-informativos.jpeg') -Force

Copy-Item (Join-Path $kit 'onepage-01-hero-ecossistema.jpeg') (Join-Path $pdfBase 'assets\one-page\01-hero-ecossistema.jpeg') -Force
Copy-Item (Join-Path $kit 'onepage-02-pacotes-principais.jpeg') (Join-Path $pdfBase 'assets\one-page\02-pacotes-principais.jpeg') -Force
Copy-Item (Join-Path $kit 'onepage-03-metodo-de-entrega.jpeg') (Join-Path $pdfBase 'assets\one-page\03-metodo-de-entrega.jpeg') -Force

$jobs = @(
    @{ Html = 'amorim-pdv-mobile-pdf.html'; Pdf = 'amorim-pdv-mobile.pdf' },
    @{ Html = 'lanchonete-web-pdf.html'; Pdf = 'lanchonete-web.pdf' },
    @{ Html = 'hortfruit-web-pdf.html'; Pdf = 'hortfruit-web.pdf' },
    @{ Html = 'ecossistema-one-page-pdf.html'; Pdf = 'ecossistema-one-page.pdf' }
)

foreach ($job in $jobs) {
    $htmlPath = Join-Path $pdfBase $job.Html
    $pdfPath = Join-Path $pdfBase $job.Pdf
    $fileUrl = 'file:///' + $htmlPath.Replace('\', '/').Replace(' ', '%20')

    & $edge --headless --disable-gpu --print-to-pdf="$pdfPath" $fileUrl | Out-Null

    if (-not (Test-Path $pdfPath)) {
        throw "PDF not generated: $pdfPath"
    }
}

Copy-Item (Join-Path $pdfBase 'amorim-pdv-mobile.pdf') (Join-Path $entrega 'amorim-pdv-mobile.pdf') -Force
Copy-Item (Join-Path $pdfBase 'lanchonete-web.pdf') (Join-Path $entrega 'lanchonete-web.pdf') -Force
Copy-Item (Join-Path $pdfBase 'hortfruit-web.pdf') (Join-Path $entrega 'hortfruit-web.pdf') -Force
Copy-Item (Join-Path $pdfBase 'ecossistema-one-page.pdf') (Join-Path $entrega 'ecossistema-one-page.pdf') -Force

$testPdf = Join-Path $pdfBase '_test_lanchonete.pdf'
if (Test-Path $testPdf) {
    Remove-Item $testPdf -Force
}

Write-Output 'Regenerated and synced PDFs'
