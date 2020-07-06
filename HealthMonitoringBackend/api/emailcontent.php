<?php
    use PHPMailer\PHPMailer\PHPMailer;

    if (isset($_POST['name']) && isset($_POST['email'])) {
        $name = $_POST['name'];
        $email = $_POST['email'];
        $subject = $_POST['subject'];
        $body = '<h3>Employee List</h3>
				
				  <table class="table table-hover text-nowrap">
					<thead>
					  <tr>
						<th>Firstname</th>
						<th>Email</th>
						<th>Symptoms</th>
						<th>Health Issue</th>
					  </tr>
					</thead>
					<tbody>
					<tr *ngFor="let employee of employees | async">
						<td>{{employee.firstName}}</td>
						<td>{{employee.emailId}} </td>
						<td> 
						  <ul class="list-unstyled">
							<li *ngFor="let s of employee.symptoms">
							  {{ s }}
							</li>
						  </ul>
						</td>
						<td>{{employee.unhealty}} %</td>
					</tr>
					</tbody>
				  </table>
				</div>
				<!-- /.card-body -->

			  <!-- /.card-body -->
			</div>';


        require_once "PHPMailer/PHPMailer.php";
        require_once "PHPMailer/SMTP.php";
        require_once "PHPMailer/Exception.php";

        $mail = new PHPMailer();

        //SMTP Settings
        $mail->isSMTP();
        $mail->Host = "smtp.gmail.com";
        $mail->SMTPAuth = true;
        $mail->Username = "altranpavan@gmail.com";
        $mail->Password = 'Try@119.';
        $mail->Port = 465; //587
        $mail->SMTPSecure = "ssl"; //tls

        //Email Settings
        $mail->isHTML(true);
        $mail->setFrom($email, $name);
        $mail->addAddress("aishwaryajadhav2395@gmail.com");
        $mail->Subject = $subject;
        $mail->Body = $body;

        if ($mail->send()) {
            $status = "success";
            $response = "Email is sent!";
        } else {
            $status = "failed";
            $response = "Something is wrong: <br><br>" . $mail->ErrorInfo;
        }

        exit(json_encode(array("status" => $status, "response" => $response)));
    }
?>
