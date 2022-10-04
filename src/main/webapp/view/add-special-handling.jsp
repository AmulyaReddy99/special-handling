<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Home page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
            crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        
    </head>

    <body>
        <div class="container">
            <div class="card border-primary">
                <h8 class="card-header text-white" style="background-color: #004680;">ADD SPECIAL HANDLING REQUEST</h8>
                <div class="card-body">

                  <div class="row mt-3">
                    <div class='col-sm-6'>
                        <label class="form-check-label" for="datetimepicker4">Start Date</label>
                       <input type='date' class="form-control" id='datetimepicker4' />
                    </div>
                    <div class='col-sm-6'>
                        <label class="form-check-label" for="datetimepicker5">End Date</label>
                        <input type='date' class="form-control" id='datetimepicker5' />
                     </div>
                  </div>

                  <div class="form-group form-inline">
                    <label for="sel1" class="mr-5 mt-5"><strong>Request Level:</strong></label>
                    <select class="form-control col-md-8 mt-5 p-1" id="sel1">
                      <option value="" disabled selected>Select Request Level</option>
                    </select>
                  </div>

                  <ul class="nav nav-tabs mt-5">
                    <li class="nav-item"><a data-toggle="tab" href="#home" class="nav-link active">CLINICAL</a></li>
                    <li class="nav-item"><a data-toggle="tab" href="#menu1" class="nav-link">NON-CLINICAL</a></li>
                    <li class="nav-item"><a data-toggle="tab" href="#menu2" class="nav-link">MISCELLENOUS</a></li>
                    <li class="nav-item"><a data-toggle="tab" href="#menu3" class="nav-link">DRUG LEVEL</a></li>
                  </ul>
                
                  <div class="tab-content">
                    <div id="home" class="tab-pane in active">
                      <table class="table-striped table table-bordered w-100">
                        <caption class="text-center" style="caption-side: top;"><strong>Clinical Resources</strong></caption>
                        <tr>
                            <td class="col-1"><input type="checkbox" ></td>
                            <td class="col-10" scope="row">CUST IN REIMBURSEMENT PROGRAM</td>
                            <td><a href="#"><span class="glyphicon glyphicon-comment"></span></a></td>
                        </tr>
                        <tr>
                          <td class="col-1"><input type="checkbox" ></td>
                          <td class="col-10" scope="row">CUST IN REIMBURSEMENT PROGRAM</td>
                          <td><a href="#"><span class="glyphicon glyphicon-comment"></span></a></td>
                        </tr>
                      </table>
                    </div>
                    <div id="menu1" class="tab-pane fade">
                      
                    </div>
                    <div id="menu2" class="tab-pane fade">
                      
                    </div>
                    <div id="menu3" class="tab-pane fade">
                      
                    </div>
                  </div>

                </div>
            </div>

        </div>
    </body>

</html>