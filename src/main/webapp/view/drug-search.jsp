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
            <div class="card">
                <div class="card-body">

                    <form class="form-horizontal" method="get" role="form" action="api/drug-search">

                        <div class="form-group row mx-md-n5">
                            <div class="col px-md-5">
                                <label for="name" class="col-form-label">Name</label>
                                <input type="text" name="name" class="form-control">
                            </div>
                            <div class="col px-md-5 d-flex align-items-end">
                                <label class="control-label px-2">Scope</label>
                                <label class="radio-inline px-2"> <input type="radio" name="season"
                                        id="seasonSummer" value="summer" checked> Begin With </label>
                                <label class="radio-inline px-2"> <input type="radio" name="season"
                                        id="seasonWinter" value="winter"> Contains </label>
                            </div>
                        </div>

                        <div class="form-group row mx-md-n5">
                            <div class="col px-md-5">
                                <label for="strength" class="col-form-label">Strength</label>
                                <input type="text" name="strength" class="form-control">
                            </div>
                            <div class="col px-md-5 d-flex align-items-end">
                                <label class="control-label px-2">Match By</label>
                                <label class="radio-inline px-2"> <input type="radio" name="clouds" id="Clear"
                                        value="clear" checked> Drug Name </label>
                                <label class="radio-inline px-2"> <input type="radio" name="clouds" id="Cloudy"
                                        value="cloudy"> Chemical Name </label>
                            </div>
                        </div>

                        <div class="float-right">
                            <input type="submit" class="btn btn-primary" value="Search" />
                            <input type="button" class="btn btn-outline-dark" value="Clear Search" />
                        </div>

                    </form>

                    <table id="dtDynamicVerticalScrollExample" class="table table-striped">
                      <thead>
                        <tr>
                          <th class="th-sm">Drug Name</th>
                          <th class="th-sm">Drug Strength</th>
                          <th class="th-sm">NDC</th>
                          <th class="th-sm">GCN</th>
                          <th class="th-sm">HICL</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                        </tr>
                      </tbody>
                      <tfoot>
                        <tr>
                          <td colspan="5">
                            <div class="col px-md-5">
                                <label class="control-label"><strong>Drug Level</strong></label>
                                <div class="row">
                                    <label class="radio-inline px-5"> <input type="radio" name="clouds" id="Clear"
                                            value="clear" checked> HICL </label>
                                    <label class="radio-inline px-5"> <input type="radio" name="clouds" id="Cloudy"
                                            value="cloudy"> GNC </label>
                                    <label class="radio-inline px-5"> <input type="radio" name="clouds" id="Clear"
                                            value="clear" checked> NDC </label>
                                </div>
                                <div class="row">
                                    <label class="radio-inline px-5"> <input type="radio" name="clouds" id="Cloudy"
                                            value="cloudy"> Include </label>
                                    <label class="radio-inline px-5"> <input type="radio" name="clouds" id="Cloudy"
                                            value="cloudy"> Exclude </label>
                                </div>
                            </div>
                          </td>
                        </tr>
                      </tfoot>
                    </table>

                </div>
            </div>


            <div class="mt-3"><label class="control-label"><strong>Drug Category</strong></label></div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                <label class="form-check-label" for="inlineCheckbox1">Controls Only (C2-C5)</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                <label class="form-check-label" for="inlineCheckbox2">Temperature Sensitive</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                <label class="form-check-label" for="inlineCheckbox2">Specialty</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                <label class="form-check-label" for="inlineCheckbox2">Show Reg Cat</label>
            </div>

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

             <textarea class="form-control mt-3" id="exampleFormControlTextarea1" rows="2" placeholder="Enter Special Comments"></textarea>

             <div class="card border-primary mt-3">
                <h8 class="card-header text-white" style="background-color: #004680;">DRUG LEVELS</h8>
                <div class="card-body">

                    <form class="form-horizontal" method="get" role="form">

                        <table class="table">
                            <tr>
                                <th class="th-sm">Product Name</th>
                                <th class="th-sm">Product Strength</th>
                                <th class="th-sm">Drug Indicator</th>
                                <th class="th-sm">Drug Level</th>
                                <th class="th-sm">Drug Category</th>
                                <th class="th-sm">Start Date</th>
                                <th class="th-sm">End Date</th>
                                <th class="th-sm">Expire</th>
                            </tr>
                            <tr>
                                <td>METROPROLOL SUCCINATE</td>
                                <td></td>
                                <td>1</td>
                                <td>HICL</td>
                                <td>NONE</td>
                                <td>May 18, 2022</td>
                                <td><input type='date' class="form-control" id='datetimepicker5' /></td>
                                <td class="d-flex justify-content-center"><input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2"></td>
                            </tr>
                        </table>

                        <label for="strength" class="col-form-label p-2"><strong>Comments:</strong></label>
                        <textarea class="form-control mt-3" id="exampleFormControlTextarea1" rows="2" placeholder="Enter Special Comments"></textarea>

                        <div class="d-flex justify-content-between mt-3">
                            <input type="button" class="btn btn-outline-dark" value="Cancel" />
                            <input type="submit" class="btn btn-outline-dark" value="Submit" />
                        </div>

                    </form>
                </div>
            </div>

        </div>
    </body>

</html>