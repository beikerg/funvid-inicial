<?php 

	require_once("../fpdf/fpdf.php");

	class PDF extends FPDF
	{
		function Header()
		{
			// Logo
    $this->Image('image/CAMINO.png',10,8,33);
    // Arial bold 15
    $this->SetFont('Arial','B',15);
    // Movernos a la derecha
    $this->Cell(80);
    // Título
    $this->Cell(30,10,'',0,1,'C');
    // Salto de línea
    $this->Ln(20);
		}

		function Footer()
		{
			// Posición: a 1,5 cm del final
    $this->SetY(-15);
    // Arial italic 8
    $this->SetFont('Arial','',8);
    // Número de página
    $this->Cell(0,10, utf8_decode('Página').$this->PageNo().'/{nb}',0,0,'C');
		}
	}

?>