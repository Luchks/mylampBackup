<?php
    session_start();
    include "db_conn.php";
    if(isset($_POST['uname']) && isset($_POST['password'])){
        function validate($data){
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
        }
        $uname = validate($_POST['uname']);
        $password= validate($_POST['password']);

        if(empty($uname)){
            header("Location: index.php?error=User Name is required");
            exit();
        }else if(empty($password)){
            header("Location: index.php?error=User Password is required");
            exit();
        }else {
            $password = md5($password);

            $sql = " select * from users where user_name='$uname' and password = '$password'";
            $result = mysqli_query($conn,$sql);

            if(mysqli_num_rows($result)===1){
                $row = mysqli_fetch_assoc($result);
                if($row['user_name']===$uname && $row['password']===$password){
                    $_SESSION['user_name'] = $row['user_name'];
                    $_SESSION['name'] = $row['name'];
                    $_SESSION['id'] = $row['id'];
                    header("Location: home.php");
                    exit();
                }
                else{
                    header("Location: index.php?error=Incorrect User name or password");
                    exit();
                }

            }else{
                header("Location: index.php?error=Incorrect User name or password");
                exit();
            }
        }
    }else{
        header("Location: index.php");
        exit();
    }
