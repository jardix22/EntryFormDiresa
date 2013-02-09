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

$tcpdf->Cell(50,7, "Num Voucher" ,'LTB',0,'L', 1); 

// tabla: segunda celda 
$tcpdf->SetFont($textfont,'',10); 
$tcpdf->SetTextColor(0, 0, 0); 

$tcpdf->Cell(0,7, $inscription['Inscription']['voucher_number'] ,'LTRB',0,'L', 1); 
$tcpdf->Ln();

// ************ END-TABLA


// ************* SUBTITULO 
$tcpdf->SetFillColor(255, 255, 255);
$tcpdf->SetFont($textfont,'B',11); 

$tcpdf->Cell(0,10, "Datos de Inscripción" ,'',0,'L', 1); 
$tcpdf->Ln();

// ************ TABLA
// fila 001
// tabla: primera celda 
$tcpdf->SetFont($textfont,'B',9); 
$tcpdf->SetTextColor(50, 50, 50); 

$tcpdf->Cell(50,7, "Fase" ,'LT',0,'L', 1); 

// tabla: segunda celda 
$tcpdf->SetFont($textfont,'',10); 
$tcpdf->SetTextColor(0, 0, 0); 

$tcpdf->Cell(0,7, $inscription['Phase']['name'] ,'LTR',0,'L', 1); 
$tcpdf->Ln();

// fila 002

// tabla: primera celda 
$tcpdf->SetFont($textfont,'B',9); 
$tcpdf->SetTextColor(50, 50, 50); 

$tcpdf->Cell(50,7, "Red" ,'LT',0,'L', 1); 

// tabla: segunda celda 
$tcpdf->SetFont($textfont,'',10); 
$tcpdf->SetTextColor(0, 0, 0); 

$tcpdf->Cell(0,7, $inscription['Network']['name'] ,'LTR',0,'L', 1); 
$tcpdf->Ln();

// fila 003

// tabla: primera celda 
$tcpdf->SetFont($textfont,'B',9); 
$tcpdf->SetTextColor(50, 50, 50); 

$tcpdf->Cell(50,7, "Profesion" ,'LTB',0,'L', 1); 

// tabla: segunda celda 
$tcpdf->SetFont($textfont,'',10); 
$tcpdf->SetTextColor(0, 0, 0); 

$tcpdf->Cell(0,7, $inscription['Profession']['name'] ,'LTRB',0,'L', 1); 
$tcpdf->Ln();
// ************ END-TABLA


// ************* SUBTITULO 
$tcpdf->SetFillColor(255, 255, 255);
$tcpdf->SetFont($textfont,'B',11); 

$tcpdf->Cell(0,10, "Datos Personales" ,'',0,'L', 1); 
$tcpdf->Ln();

// ************ TABLA
// fila 001

// tabla: primera celda 
$tcpdf->SetFont($textfont,'B',9); 
$tcpdf->SetTextColor(50, 50, 50); 

$tcpdf->Cell(50,7, "DNI" ,'LT',0,'L', 1); 

// tabla: segunda celda 
$tcpdf->SetFont($textfont,'',10); 
$tcpdf->SetTextColor(0, 0, 0); 

$tcpdf->Cell(0,7, $inscription['Person']['document'] ,'LTR',0,'L', 1); 
$tcpdf->Ln();

// fila 002

// tabla: primera celda 
$tcpdf->SetFont($textfont,'B',9); 
$tcpdf->SetTextColor(50, 50, 50); 

$tcpdf->Cell(50,7, "Nombre" ,'LT',0,'L', 1); 

// tabla: segunda celda 
$tcpdf->SetFont($textfont,'',10); 
$tcpdf->SetTextColor(0, 0, 0); 

$tcpdf->Cell(0,7, $inscription['Person']['names'] ,'LTR',0,'L', 1); 
$tcpdf->Ln();

// fila 003

// tabla: primera celda 
$tcpdf->SetFont($textfont,'B',9); 
$tcpdf->SetTextColor(50, 50, 50); 

$tcpdf->Cell(50,7, "Apellido Paterno" ,'LT',0,'L', 1); 

// tabla: segunda celda 
$tcpdf->SetFont($textfont,'',10); 
$tcpdf->SetTextColor(0, 0, 0); 

$tcpdf->Cell(0,7, $inscription['Person']['lf_name'] ,'LTR',0,'L', 1); 
$tcpdf->Ln();

// fila 004

// tabla: primera celda 
$tcpdf->SetFont($textfont,'B',9); 
$tcpdf->SetTextColor(50, 50, 50); 

$tcpdf->Cell(50,7, "Apellido Materno" ,'LT',0,'L', 1); 

// tabla: segunda celda 
$tcpdf->SetFont($textfont,'',10); 
$tcpdf->SetTextColor(0, 0, 0); 

$tcpdf->Cell(0,7, $inscription['Person']['lm_name'] ,'LTR',0,'L', 1); 
$tcpdf->Ln();

// fila 005

// tabla: primera celda 
$tcpdf->SetFont($textfont,'B',9); 
$tcpdf->SetTextColor(50, 50, 50); 

$tcpdf->Cell(50,7, "Fecha de Nacimiento" ,'LT',0,'L', 1); 

// tabla: segunda celda 
$tcpdf->SetFont($textfont,'',10); 
$tcpdf->SetTextColor(0, 0, 0); 

$tcpdf->Cell(0,7, $inscription['Person']['birthdate'] ,'LTR',0,'L', 1); 
$tcpdf->Ln();

// fila 006

// tabla: primera celda 
$tcpdf->SetFont($textfont,'B',9); 
$tcpdf->SetTextColor(50, 50, 50); 

$tcpdf->Cell(50,7, "Direccion" ,'LT',0,'L', 1); 

// tabla: segunda celda 
$tcpdf->SetFont($textfont,'',10); 
$tcpdf->SetTextColor(0, 0, 0); 

$tcpdf->Cell(0,7, $inscription['Person']['address'] ,'LTR',0,'L', 1); 
$tcpdf->Ln();

// fila 007

// tabla: primera celda 
$tcpdf->SetFont($textfont,'B',9); 
$tcpdf->SetTextColor(50, 50, 50); 

$tcpdf->Cell(50,7, "Correo Electronico" ,'LT',0,'L', 1); 

// tabla: segunda celda 
$tcpdf->SetFont($textfont,'',10); 
$tcpdf->SetTextColor(0, 0, 0); 

$tcpdf->Cell(0,7, $inscription['Person']['email'] ,'LTR',0,'L', 1); 
$tcpdf->Ln();

// fila 008

// tabla: primera celda 
$tcpdf->SetFont($textfont,'B',9); 
$tcpdf->SetTextColor(50, 50, 50); 

$tcpdf->Cell(50,7, "Num. Celular" ,'LTB',0,'L', 1); 

// tabla: segunda celda 
$tcpdf->SetFont($textfont,'',10); 
$tcpdf->SetTextColor(0, 0, 0); 

$tcpdf->Cell(0,7, $inscription['Person']['cellphone'] ,'LTRB',0,'L', 1); 
$tcpdf->Ln();


// ************ END-TABLA


echo $tcpdf->Output('ficha de inscripcion.pdf', 'I'); 

?>