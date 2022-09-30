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
        <h8 class="card-header text-white" style="background-color: #004680"
          >SPECIAL HANDLING REQUESTS</h8
        >
        <div class="d-flex justify-content-between m-3">
            <input type="button" class="btn btn-outline-dark" value="Add Request" />
            <input type="button" class="btn btn-outline-dark" value="Update Request" />
            <input type="button" class="btn btn-outline-dark" value="View Request" />
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

            <tbody>
              <tr
                data-toggle="collapse"
                data-target="#demo1"
                class="accordion-toggle"
              >
                <td>
                  <button class="btn btn-primary btn-xs">
                    <span class="glyphicon glyphicon-eye-open"></span>
                  </button>
                </td>
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
                <td colspan="12" class="p-0" style="background-color: #b7ced8;">
                  <div class="accordian-body collapse" id="demo1">
                    <div class="card m-3 rounded">
                        <div class="card-header">SPECIAL COMMENTS</div>
                        <div class="card-body">
                            <p class="card-text">With supporting text below as a natural lead-in to additional content. With supporting text below as a natural lead-in to additional content. With supporting text below as a natural lead-in to additional content. With supporting text below as a natural lead-in to additional content.</p>
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
                        </div>
                    </div>
                  </div>
                </td>
              </tr>

              <tr
                data-toggle="collapse"
                data-target="#demo2"
                class="accordion-toggle"
              >
                <td>
                  <button class="btn btn-primary btn-xs">
                    <span class="glyphicon glyphicon-eye-open"></span>
                  </button>
                </td>
                <td>Silvio</td>
                <td>Santos</td>
                <td>São Paulo</td>
                <td>SP</td>
                <td>new</td>
                <td>Silvio</td>
                <td>Santos</td>
                <td>São Paulo</td>
                <td>SP</td>
                <td>new</td>
              </tr>
              <tr>
                <td colspan="12" class="p-0" style="background-color: #b7ced8;">
                  <div id="demo2" class="accordian-body collapse">
                    <div class="card m-3 rounded">
                        <div class="card-header">SPECIAL COMMENTS</div>
                        <div class="card-body">
                            <p class="card-text">With supporting text below as a natural lead-in to additional content. With supporting text below as a natural lead-in to additional content. With supporting text below as a natural lead-in to additional content. With supporting text below as a natural lead-in to additional content.</p>
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
                        </div>
                    </div>
                  </div>
                </td>
              </tr>

            </tbody>
          </table>

          <div class="mt-3">
            <input type="button" class="btn btn-outline-dark" value="Close" />
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
