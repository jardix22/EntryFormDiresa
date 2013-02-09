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


$tcpdf->SetTextColor(0, 0, 0); 
$tcpdf->SetFont($textfont,'B',13); 
$tcpdf->Cell(0,0, "REPORTE" , 0,1,'C',false, '', 0 ); 

// Titulo de la pagina
$tcpdf->SetTextColor(0, 0, 0); 
$tcpdf->SetFont($textfont,'',11); 
$tcpdf->Cell(0,10, $network['Network']['name'] .": ". $profession['Profession']['name'] , 0,1,'C',false, '', 0 ); 
$tcpdf->Cell(0, 0, '', 'T');
$tcpdf->Ln();

$tcpdf->SetFillColor(195, 195, 195);
$tcpdf->SetFont($textfont,'B',9); 

$tcpdf->Cell(10,7, "Nº" ,'LT',0,'C', 1); 
$tcpdf->Cell(40,7, "Num. Voucher" ,'LT',0,'C', 1); 
$tcpdf->Cell(40,7, "DNI" ,'LT',0,'C', 1); 
$tcpdf->Cell(0,7, "Nombres y Apellidos" ,'LTR',0,'C', 1);

$tcpdf->Ln();

$tcpdf->SetFillColor(255, 255, 255);
$tcpdf->SetFont($textfont,'',10); 

foreach ($inscriptions as $key => $inscription){	
	$tcpdf->Cell(10,7, $key+1 ,'LRT',0,'C'); 
	$tcpdf->Cell(40,7, $inscription['Inscription']['voucher_number'] ,'LRT',0,'C'); 
	$tcpdf->Cell(40,7, $inscription['Person']['document'] ,'LRT',0,'C'); 
	$tcpdf->Cell(0,7, $inscription['Person']['lf_name']." " .$inscription['Person']['lm_name'] ." ". $inscription['Person']['name'] ,'LRT',0,'C'); 
	$tcpdf->Ln();
}

$tcpdf->Cell(0,7, '' ,'T',0,'C'); 

echo $tcpdf->Output('reporte.pdf', 'I'); 

?>