<%@ page contentType="text/html;charset=UTF-8" %> <%@ taglib prefix="fn"
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

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  
  </head>

  <body>
    <div class="container">
      <div class="card border-primary">
        <h8 class="card-header text-white" style="background-color: #004680">SPECIAL HANDLING HISTORY</h8>
        <div class="card-body">

          <label class="control-label px-2">View History For:</label>
          <label class="radio-inline px-2"> <input type="radio" name="season"
                  id="seasonSummer" value="summer" checked> Patient </label>
          <label class="radio-inline px-2"> <input type="radio" name="season"
                  id="seasonWinter" value="winter"> Membership </label>
          
          <table class="table table-condensed table-striped">
            <thead>
              <tr class="text-primary">
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

            <tbody>
              <tr>
                <td>Carlos</td>
                <td>Mathias</td>
                <td>Leme</td>
                <td>SP</td>
                <td>new</td>
                <td>Carlos</td>
                <td>Mathias</td>
                <td>Leme</td>
                <td>SP</td>
                <td>new</td>
              </tr>

              <tr>
                <td>Carlos</td>
                <td>Mathias</td>
                <td>Leme</td>
                <td>SP</td>
                <td>new</td>
                <td>Carlos</td>
                <td>Mathias</td>
                <td>Leme</td>
                <td>SP</td>
                <td>new</td>
            </tr>
            
            <tr>
              <td>Carlos</td>
              <td>Mathias</td>
              <td>Leme</td>
              <td>SP</td>
              <td>new</td>
              <td>Carlos</td>
              <td>Mathias</td>
              <td>Leme</td>
              <td>SP</td>
              <td>new</td>
            </tr>

            <tr>
              <td>Carlos</td>
              <td>Mathias</td>
              <td>Leme</td>
              <td>SP</td>
              <td>new</td>
              <td>Carlos</td>
              <td>Mathias</td>
              <td>Leme</td>
              <td>SP</td>
              <td>new</td>
            </tr>

            <tr>
              <td>Carlos</td>
              <td>Mathias</td>
              <td>Leme</td>
              <td>SP</td>
              <td>new</td>
              <td>Carlos</td>
              <td>Mathias</td>
              <td>Leme</td>
              <td>SP</td>
              <td>new</td>
            </tr>

            <tr>
              <td>Carlos</td>
              <td>Mathias</td>
              <td>Leme</td>
              <td>SP</td>
              <td>new</td>
              <td>Carlos</td>
              <td>Mathias</td>
              <td>Leme</td>
              <td>SP</td>
              <td>new</td>
            </tr>

            </tbody>
          </table>

          <div class="card rounded">
            <div class="card-header">SPECIAL COMMENTS</div>
            <div class="card-body">
                <p class="card-text">With supporting text below as a natural lead-in to additional content. With supporting text below as a natural lead-in to additional content. With supporting text below as a natural lead-in to additional content. With supporting text below as a natural lead-in to additional content.</p>
            </div>
          </div>

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

                <tbody>
                    <tr>
                        <td>Carlos</td>
                        <td>Mathias</td>
                        <td>Leme</td>
                        <td>SP</td>
                        <td>new</td>
                        <td>Carlos</td>
                        <td>Mathias</td>
                        <td>Leme</td>
                        <td>SP</td>
                    </tr>
                </tbody>
            </thead>
        </table>
        
          <div class="mt-3">
            <input type="button" class="btn btn-outline-dark" onclick="window.location='/'" value="Close" />
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
