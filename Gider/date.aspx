<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="date.aspx.cs" Inherits="Gider.date" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment-with-locales.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
<script src="https://rawgit.com/tempusdominus/bootstrap-4/master/build/js/tempusdominus-bootstrap-4.js"></script>
<link href="https://rawgit.com/tempusdominus/bootstrap-4/master/build/css/tempusdominus-bootstrap-4.css" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

</head>


<body>

  <div class="container">
  <div class="row">
    <div class="col-sm-6">
      <div class="form-group">
        <div class="input-group date" id="datetimepicker1" data-target-input="nearest">
          <input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker1" />
          <span class="input-group-addon" data-target="#datetimepicker1" data-toggle="datetimepicker">
                        <span class="fa fa-calendar"></span>
          </span>
        </div>
      </div>
    </div>
  </div>
</div>
</html>
