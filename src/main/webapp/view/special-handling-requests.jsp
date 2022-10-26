<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib prefix="fn"
uri="http://java.sun.com/jsp/jstl/functions" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

  </head>

  <script>
    $(document).ready(function(){
      $.ajax({
        url: "https://api.jsonbin.io/v3/b/633ff7850e6a79321e201164",
        method: 'GET',
        type: 'json',
        crossDomain: true,
        headers: {  'Access-Control-Allow-Origin': '*' },
        success: function (response) {
            console.log(response);
            $.each(response.record.Response.Group.Membership.PatientData.Patient, function(i, val) {
              var currRow = $("#tr0").clone().appendTo($('#items')).attr('id', "tr" + (i + 1));
              currRow.find('td:eq(0)').attr("id", "row" + i + 1);
              currRow.find('.startDate').html(val.SpecialHandling.EffectiveDate);
              currRow.find('.endDate').html(val.SpecialHandling.EndDate);
              currRow.find('.reasonDescription').html(val.SpecialHandling.ReasonCode);
              currRow.find('.firstName').html(val.PersonNumber);
              currRow.find('.lastName').html(val.PersonNumber);
              currRow.find('.patientNumber').html(val.PersonNumber);
              currRow.find('.created').html(val.SpecialHandling.InsertTMS);
              currRow.find('.userId').html(val.SpecialHandling.InsertUserId);
              currRow.find('.specialComments').html(val.SpecialHandling.CommentText);
              currRow.find('.specialComments').html(val.Level);

              var currRowDetails = $("#trdetails0").clone().appendTo($('#items')).attr("id", "itemdetails" + (i + 1));
              currRowDetails.find('.specialComments').html(val.SpecialHandling.CommentText);
              currRowDetails.find('.productName').html(val.PersonNumber);
              currRowDetails.find('.productStrength').html(val.PersonNumber);
              currRowDetails.find('.drugIndicator').html(val.SpecialHandling.DrugMarkerindicator);
              currRowDetails.find('.drugLevel').html(val.SpecialHandling.Level);
              currRowDetails.find('.drugLevelValue').html(val.SpecialHandling.Level);
              currRowDetails.find('.drugCategory').html(val.SpecialHandling.DrugMarkerCatCode);
              currRowDetails.find('.startDate').html(val.SpecialHandling.EffectiveDate);
              currRowDetails.find('.endDate').html(val.SpecialHandling.EndDate);
              currRowDetails.find('.created').html(val.SpecialHandling.InsertTMS);

              currRowDetails.toggle();
              $("#tr" + (i + 1)).click(function() {
                $("#itemdetails" + (i + 1)).toggle();
              });
            });
            var firstTr = $("#tr0").hide();
            var firstItemDetail = $("#trdetails0").hide();
            var specialComments = $("specialComments0").hide();
        },
        error: function (error) {
            console.log(error);
        }
      });
    })
  </script>

  <body>
    <div class="container">
      <div class="card border-primary">
        <h8 class="card-header text-white" style="background-color: #004680"
          >SPECIAL HANDLING REQUESTS</h8>
        <div class="d-flex justify-content-between m-3">
            <input type="button" class="btn" onclick="window.location='add-special-handling'" value="Add Request" />
            <input type="button" class="btn" onclick="window.location='update-special-handling'" value="Update Request" />
            <input type="button" class="btn" onclick="window.location='special-handling-history'" value="View Request" />
        </div>
        <div class="card-body">
          <table class="table table-condensed table-striped">
            <thead>
              <tr class="text-primary">
                <th></th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Reason Description</th>
                <th>Patient First Name</th>
                <th>Patient Last Name</th>
                <th>Patient Number</th>
                <th>Created</th>
                <th>User ID</th>
                <th>Special Comments</th>
                <th>Drug Level Indicator</th>
              </tr>
            </thead>

            <tbody id="items">
              <tr id="tr0">
                <td><span class="glyphicon glyphicon-menu-right"></span></td>
                <td><a><div class="startDate"></div></a></td>
                <td><a><div class="endDate"></div></a></td>
                <td><a><div class="reasonDescription"></div></a></td>
                <td><div class="firstName"></div></td>
                <td><a><div class="lastName"></div></a></td>
                <td><a><div class="patientNumber"></div></a></td>
                <td><a><div class="created"></div></a></td>
                <td><a><div class="userId"></div></a></td>
                <td><div class="specialComments"></div></td>
                <td><a><div class="specialComments"></div></a></td>
              </tr>


              <tr id="trdetails0">
                <td colspan="12" class="p-0" style="background-color: #b7ced8;">
                  <div id="demo${patient.personNumber}">
                    <div class="card m-3 rounded">
                        <div class="card-header">SPECIAL COMMENTS</div>
                        <div class="card-body">
                            <p class="card-text specialComments"></p>
                        </div>
                    </div>
                    <div class="m-3">
                      <table class="table table-condensed table-striped">
                        <thead>
                          <tr>
                            <th>Product Name</th>
                            <th>Product Strength</th>
                            <th>Drug Indicator</th>
                            <th>Drug Level</th>
                            <th>Drug Level Value</th>
                            <th>Drug Category</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th>Created</th>
                          </tr>

                            <tbody id="itemDetails">
                              <tr>
                                <td><a><div class="productName"></div></a></td>
                                <td><a><div class="productStrength"></div></a></td>
                                <td><a><div class="drugIndicator"></div></a></td>
                                <td><div class="drugLevel"></div></td>
                                <td><a><div class="drugLevelValue"></div></a></td>
                                <td><a><div class="drugCategory"></div></a></td>
                                <td><a><div class="startDate"></div></a></td>
                                <td><a><div class="endDate"></div></a></td>
                                <td><div class="created"></div></td>
                              </tr>
                            </tbody>
                        </thead>
                      </table>
                    </div>
                  </div>
                </td>
              </tr>

            </tbody>
          </table>

          <div class="mt-3">
            <input type="button" class="btn" value="Close" />
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
