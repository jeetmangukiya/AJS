<?php
define('TITLE', 'Products');
define('PAGE', 'Products');
include('includes/header.php');
include('../dbConnection.php');
session_start();
if ($_SESSION['is_adminlogin']) {
    $aEmail = $_SESSION['aEmail'];
} else {
    echo "<script> location.href='AdminLogin.php'; </script>";
}
?>

<div class="col-sm-9 col-md-10 mt-4 text-center">
    <!--Table-->
    <p class=" bg-dark text-white p-2">Product/Parts Details</p>
    <?php
    $sql = "SELECT * FROM products_tb";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        echo '<table class="table">
    <thead>
      <tr>
        <th scope="col">Product ID</th>
        <th scope="col">Name</th>
        <th scope="col">Date of Purchase</th>
        <th scope="col">Available</th>
        <th scope="col">Total</th>
        <th scope="col">Original Cost for Each</th>
        <th scope="col">Selling Price for Each</th>
        <th scope="col">Action</th>
      </tr>
    </thead>
    <tbody>';
        while ($row = $result->fetch_assoc()) {
            echo '<tr>
        <th scope="row">' . $row["pid"] . '</th>
        <td>' . $row["pname"] . '</td>
        <td>' . $row["pdop"] . '</td>
        <td>' . $row["pava"] . '</td>
        <td>' . $row["ptotal"] . '</td>
        <td>' . $row["poriginalcost"] . '</td>
        <td>' . $row["psellingcost"] . '</td>
        <td>
          <form action="editproduct.php" method="POST" class="d-inline"> <input type="hidden" name="id" value=' . $row["pid"] . '><button type="submit" class="btn btn-primary" name="view" value="View"><i class="fas fa-pen"></i></button></form>  
          <form action="" method="POST" class="d-inline"><input type="hidden" name="id" value=' . $row["pid"] . '><button type="submit" class="btn btn-secondary" name="delete" value="Delete"><i class="far fa-trash-alt"></i></button></form>
          <form action="sellproduct.php" method="POST" class="d-inline"><input type="hidden" name="id" value=' . $row["pid"] . '><button type="submit" class="btn btn-success" name="issue" value="Issue"><i class="fas fa-handshake"></i></button></form>
        </td>
      </tr>';
        }
        echo '</tbody>
  </table>';
    } else {
        echo "0 Result";
    }
    if (isset($_REQUEST['delete'])) {
        $sql = "DELETE FROM products_tb WHERE pid = {$_REQUEST['id']}";
        if ($conn->query($sql) === TRUE) {
            // echo "Record Deleted Successfully";
            // below code will refresh the page after deleting the record
            echo '<meta http-equiv="refresh" content= "0;URL=?deleted" />';
        } else {
            echo "Unable to Delete Data";
        }
    }
    ?>
</div>
</div>
<a class="btn text-primary box"  style="background-color:#DCDCDC;" href="addproduct.php"><i class="fas fa-plus fa-2x"></i></a>
</div>


<?php
include('includes/footer.php');
?>