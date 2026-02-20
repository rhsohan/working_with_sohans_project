<?php include 'inc/header.php'?>
<?php include 'inc/sidebar.php'?>

        <div class="grid_10">

            <div class="box round first grid">
                <h2>Themes</h2>
               <div class="block copyblock">
                <?php
                    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                        $theme = mysqli_real_escape_string($db->link, $_POST['theme']);

                        $query      = "UPDATE tbl_theme SET theme = '$theme' WHERE id = '1'";
                        $update_row = $db->update($query);
                        if ($update_row) {
                            echo "<span class='success'>Theme Updated Successfully.</span>";
                        } else {
                            echo "<span class='error'>Theme Not Updated.</span>";
                        }
                    }
                ?>

<?php
    $query  = "SELECT * FROM tbl_theme WHERE id = '1' ";
    $themes = $db->select($query);

    while ($result = $themes->fetch_assoc()) {
    ?>
                 <form action="" method="post">
                    <table class="form">

                        <tr>
                            <td>
                                <input <?php if ($result['theme'] == 'gradient') {
                                                echo "checked";
                                        }
                                        ?> type="radio" name="theme" value="gradient" /> Gradient
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <input <?php if ($result['theme'] == 'green') {
                                               echo "checked";
                                           }?> type="radio" name="theme" value="green" /> Green
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input <?php if ($result['theme'] == 'deep_red') {
                                               echo "checked";
                                           }?> type="radio" name="theme" value="deep_red" /> Red
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input <?php if ($result['theme'] == 'yellow') {
                                               echo "checked";
                                           }?> type="radio" name="theme" value="yellow" /> Yellow
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input <?php if ($result['theme'] == 'blue') {
                                                echo "checked";
                                        }
                                        ?> type="radio" name="theme" value="blue" /> Blue
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <input <?php if ($result['theme'] == 'dark') {
                                                echo "checked";
                                        }
                                        ?> type="radio" name="theme" value="dark" /> Dark
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <input type="submit" name="submit" Value="Change" />
                            </td>
                        </tr>
                    </table>
                    </form>

                    <?php
                        }
                    ?>
                </div>
            </div>
        </div>

        <?php include 'inc/footer.php'?>
