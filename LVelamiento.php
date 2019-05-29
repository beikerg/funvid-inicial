<?php
 
include("include/rol.php");
 

    require_once("ajax/db_connection.php");
    ?>

<!DOCTYPE html>
<html lang="es">
<head>
   <title>FUNVID | Velamientos</title>
  <?php  include("include/head.php"); ?>
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<?php 
  //<!-- Main Header -->
    include("include/header.php");
  //-- Left side column. contains the logo and sidebar -->
    include("include/aside-admin.php");
?>    
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Velamientos
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Velemientos</a></li>
        
        <li class="active">Lista de velamientos</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

      <!--------------------------
        | Your Page Content Here |
        -------------------------->
    <div class="row">
    <div class="col-md-12 pull-right">
    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus"></i> Nuevo</button>
  </div>
</div>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Seleccione el Residente</h4>
      </div>
      <div class="modal-body">
        
       <div classs="container">    
     <div class="box box-solid">
     
      <div class="box-body">
      <div class="row">
        <div class="col-xs-12">
        <table id="myTable" class=" table table-bordered table-striped">
          <thead>
            <th>ID</th>
            <th>Nombres</th>
            <th>Apellido</th>
            <th>Rut</th>
            <th>Etapa</th>
            <th><center>Opciones</center></th>

          </thead>
          <tbody>
            <?php
              include('ajax/db_connection.php');
              $sql = "SELECT * FROM residentes";

              //use for MySQLi-OOP
              $query = $mysql->query($sql);
              $n = 1;
              while($row = $query->fetch_assoc()){
                echo 
                "<tr>
                  <td>".$n."</td>
                  <td>".$row['nombre']."</td>
                  <td>".$row['apellido']."</td>
                  <td>".$row['rut']."</td>
                  <td>".$row['etapa_resi']."</td>
                  
                  
                  <td align='center'>

                    <a href='velamiento.php?id=".$row['id_residente']."' class='btn btn-primary'><i class='glyphicon glyphicon-check'></i></a>
                  
                  
                    
                  </td>
                </tr>";
                $n++;
              }

              $mysql->close();
            ?>
          </tbody>
        </table>
      </div>
      </div>
    </div>
    </div>
    </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
      </div>
    </div>

  </div>
</div>
    
       
            


      <br>
<!-- Lista de terapia de relato de pase -->
<div classs="container">    
     <div class="box box-solid">
     <div class="box-header with-border">
        <h3 class="box-title">Lista velamientos</h3>
      </div> 
      <div class="box-body">
      <div class="row">
        <div class="col-xs-12">
        <table id="" class="display table table-bordered table-striped">
          <thead>
            <th>No.</th>
            <th>Nombres</th>
            <th>Apellido</th>
            <th>Rut</th>
            <th>Fecha de velamiento</th>
            <th><center>Opciones</center></th>

          </thead>
          <tbody>
            <?php
              include('ajax/db_connection.php');
              $sql = "SELECT r.*, v.* FROM residentes r INNER JOIN velamiento v ON v.id_residente = r.id_residente ORDER BY v.id_v DESC";

              //use for MySQLi-OOP
              $query = $mysql->query($sql);
              $n = 1;
              while($row = $query->fetch_assoc()){
                echo 
                "<tr>
                  <td>".$n."</td>
                  <td>".$row['nombre']."</td>
                  <td>".$row['apellido']."</td>
                  <td>".$row['rut']."</td>
                  <td>".date('d-m-Y', strtotime($row['fecha_v']))."</td>
                  
                  
                  <td align='center'>

                    <a class='btn btn-warning' title='Editar' href='editVelamiento.php?id=".$row['id_residente']."&v=".$row['id_v']."'><i class='glyphicon glyphicon-pencil'></i></a>
                  
                  <a class='btn btn-danger' title='Eliminar' href='#' onclick='preguntar(".$row['id_v'].")'><i class='glyphicon glyphicon-trash'></i></a>
                  
                    

                  </td>
                </tr>";
               $n++; 
              }


              $mysql->close();
            ?>
          </tbody>
        </table>
      </div>
      </div>
    </div>
    </div>
    </div>
<!-- ./ Fin de lista de terapia de repato de pase -->
        

           
        

    

            
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <?php include("include/footer.php"); ?>

  <!-- Control Sidebar -->
   
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
 
<?php include("include/scrip.php"); ?>
<script type="text/javascript">
  function preguntar (id){
    if(confirm('¿Esta seguro que desa eliminarlo?')){
      window.location.href = "ajax/velamiento/deleteVelamiento.php?id=" + id;
        }
   }
</script>
</body>
</html>