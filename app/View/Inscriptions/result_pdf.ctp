<?php 
App::import('Vendor','xtcpdf');  

$tcpdf = new XTCPDF(); 
$textfont = 'freesans'; // looks better, finer, and more condensed than 'dejavusans' 

$tcpdf->SetAuthor("Kymera - Group"); 
$tcpdf->SetAutoPageBreak( false ); 
$tcpdf->setHeaderFont(array($textfont,'',20)); 
$tcpdf->xheadercolor = array(150,0,0); 
$tcpdf->xheadertext = ''; 
$tcpdf->xfootertext = 'Copyright © %d Direccion Regional de Salud - Puno.'; 

// add a page (required with recent versions of tcpdf) 
$tcpdf->AddPage(); 


// Titulo de la pagina
$tcpdf->SetTextColor(0, 0, 0); 
$tcpdf->SetFont($textfont,'B',12); 

$tcpdf->Cell(0,10, "FICHA DE INSCRIPCIÓN", 0,1,'C',false, '', 0 ); 
$tcpdf->Cell(0, 0, '', 'T');
$tcpdf->Ln();

// ************* SUBTITULO 
$tcpdf->SetFillColor(255, 255, 255);
$tcpdf->SetFont($textfont,'B',11); 

$tcpdf->Cell(0,10, "Datos de Boucher" ,'',0,'L', 1); 
$tcpdf->Ln();


// ************ TABLA

// tabla: primera celda 
$tcpdf->SetFont($textfont,'B',9); 
$tcpdf->SetTextColor(50, 50, 50); 

$tcpdf->Cell(50,7, "Num Voucher" ,'LTB',0,'C', 1); 

// tabla: segunda celda 
$tcpdf->SetFont($textfont,'',10); 
$tcpdf->SetTextColor(0, 0, 0); 

$tcpdf->Cell(0,7, $inscription['Inscription']['voucher_number'] ,'LTRB',0,'C', 1); 
$tcpdf->Ln();

// ************ END-TABLA


// ************* SUBTITULO 
$tcpdf->SetFillColor(255, 255, 255);
$tcpdf->SetFont($textfont,'B',11); 

$tcpdf->Cell(0,10, "Datos de Boucher" ,'',0,'L', 1); 
$tcpdf->Ln();

// ************ TABLA

// tabla: primera celda 
$tcpdf->SetFont($textfont,'B',9); 
$tcpdf->SetTextColor(50, 50, 50); 

$tcpdf->Cell(50,7, "Num Voucher" ,'LTB',0,'C', 1); 

// tabla: segunda celda 
$tcpdf->SetFont($textfont,'',10); 
$tcpdf->SetTextColor(0, 0, 0); 

$tcpdf->Cell(0,7, $inscription['Inscription']['voucher_number'] ,'LTR',0,'C', 1); 
$tcpdf->Ln();

// tabla: primera celda 
$tcpdf->SetFont($textfont,'B',9); 
$tcpdf->SetTextColor(50, 50, 50); 

$tcpdf->Cell(50,7, "Num Voucher" ,'LTB',0,'C', 1); 

// tabla: segunda celda 
$tcpdf->SetFont($textfont,'',10); 
$tcpdf->SetTextColor(0, 0, 0); 

$tcpdf->Cell(0,7, $inscription['Inscription']['voucher_number'] ,'LTRB',0,'C', 1); 
$tcpdf->Ln();

// ************ END-TABLA


echo $tcpdf->Output('ficha de inscripcion.pdf', 'I'); 

?>