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

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        
    </head>

    <body>
        <div class="container">
            <div class="card border-primary">
                <h8 class="card-header text-white" style="background-color: #004680;">UPDATE SPECIAL HANDLING REQUEST</h8>
                <div class="card-body">

                    <form class="form-horizontal" method="get" role="form">

                        <table class="table-borderless w-100">
                            <tr>
                                <th class="col-4 p-2" scope="row">Start Date:</th>
                                <td>
                                    2022-09-14
                                    <div class="form-check form-check-inline pl-5">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                                        <label class="form-check-label" for="inlineCheckbox2">Expire record</label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th class="col-4 p-2" scope="row">End Date:</th>
                                <td><input type='date' class="form-control" id='datetimepicker5' /></td>
                            </tr>
                            <tr>
                                <th class="col-4 p-2" scope="row">Patient First Name:</th>
                                <td>James</td>
                            </tr>
                            <tr>
                                <th class="col-4 p-2" scope="row">Patient Last Name:</th>
                                <td>Gary</td>
                            </tr>
                            <tr>
                                <th class="col-4 p-2" scope="row">Patient Number:</th>
                                <td>001</td>
                            </tr>
                            <tr>
                                <th class="col-4 p-2" scope="row">Reason:</th>
                                <td>ALLERGY OTHER</td>
                            </tr>
                        </table>

                        <label for="strength" class="col-form-label p-2"><strong>Comments:</strong></label>
                        <textarea class="form-control mt-3" id="exampleFormControlTextarea1" rows="2" placeholder="Enter Special Comments"></textarea>

                        <div class="d-flex justify-content-between mt-3">
                            <input type="button" class="btn btn-outline-dark" value="Cancel" />
                            <div>
                                <input type="button" class="btn btn-primary" id="popUp" value="INCLUDE / EXCLUDE DRUG" data-toggle="modal" data-target="#myModal" />
                                <input type="submit" class="btn btn-outline-dark" value="Submit" />
                            </div>
                        </div>

                    </form>
                </div>
            </div>


            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">DRUG SEARCH</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div id="loadModalBody" >
                            <%@include file="drug-search.jsp" %>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </body>

</html>