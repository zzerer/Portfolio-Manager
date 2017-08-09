<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String path = request.getContextPath(); %>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Portfolio Management | PortfolioDetail</title>

  <!-- Bootstrap -->
  <link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap.min.css">
  <!-- Datatable -->
  <link rel="stylesheet" type="text/css" href="<%=path %>/css/dataTables.bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" type="text/css" href="<%=path %>/css/font-awesome.min.css">

  <!-- Custom Theme Style -->
  <link href="<%=path %>/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
  <div class="container body">
    <div class="main_container">
      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">
          <div class="navbar nav_title" style="border: 0;">
            <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Portfolio Management!</span></a>
          </div>

          <div class="clearfix"></div>

          <!-- menu profile quick info -->
          <div class="profile clearfix">
            <div class="profile_pic">
              <img src="<%=path %>/images/Pat.png" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
              <span>Welcome,</span>
              <h2>${sessionScope.FundManager.firstname}${sessionScope.FundManager.lastname}</h2>
            </div>
          </div>
          <!-- /menu profile quick info -->

          <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-user"></i> Found Manager <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="fundManagersList.html">View Found Managers</a></li>
                      <!-- <li><a href="form_advanced.html">Advanced Components</a></li> -->
                    </ul>
                  </li>
                  <li><a><i class="fa fa-tasks"></i> Portfolio <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="portfoliosList.html">View Portfolios</a></li>
                      <!-- <li><a href="form_advanced.html">Advanced Components</a></li> -->
                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> Security  <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="securitiesList.html">View Securities</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
            <!-- /sidebar menu -->

        </div>
      </div>

      <!-- top navigation -->
      <div class="top_nav">
        <div class="nav_menu">
          <nav>
            <div class="nav toggle">
              <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
              <li class="">
                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                  <img src="<%=path %>/images/Pat.png" alt="">${sessionScope.FundManager.firstname}${sessionScope.FundManager.lastname}
                  <span class=" fa fa-angle-down"></span>
                </a>
                <ul class="dropdown-menu dropdown-usermenu pull-right">
                  <li><a href="javascript:;"> Profile</a></li>
                  <li>
                    <a href="javascript:;">
                      <span class="badge bg-red pull-right">50%</span>
                      <span>Settings</span>
                    </a>
                  </li>
                  <li><a href="javascript:;">Help</a></li>
                  <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                </ul>
              </li>


            </ul>
          </nav>
        </div>
      </div>
      <!-- /top navigation -->

      <!-- page content -->
      <div class="right_col" role="main">
        <div class=""  style="height: 1250px;">
          <div class="page-title">
            <div class="title_left">
              <h3>Portfolio Detail</h3>
            </div>
          </div>

          <div class="clearfix"></div>

          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Portfolio Report </h2>
                 <!--  -->
                  <div class="clearfix"></div>
                </div>
                <div class="managerInf" style="float: right;">                 
                </div>
                
                <div class="x_content">
                   <div class="col-md-6 col-sm-6 col-xs-12 ">
                      <div id="portfolio-graphPie" style="width: 100%; height: 400px"></div>
                   </div>
                   <div class="col-md-6 col-sm-6 col-xs-12 ">
                      <div id="portfolio-graphLine" style="width: 100%; height: 400px"></div>
                   </div>
                </div>
              </div> 
            </div>
          </div>
          
           <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Position List</h2>
                  <ul class="nav navbar-right ">
                    <li><a  class="btn btn-success btn-xs plus" href="securitiesList_manager.html"><i class="fa fa-plus"></i> Add </a></li>
                  </ul>
                 <!--  -->
                  <div class="clearfix"></div>
                </div>
          
           <div class="x_content">
                    <div class="" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                          <li role="presentation" class="active"><a href="#etf_tab_content" role="tab" id="etf-tab" data-toggle="tab" aria-expanded="false">Positions</a>
                          </li>
                          <li role="presentation" class=""><a href="#bond_tab_content" id="bond-tab" role="tab" data-toggle="tab" aria-expanded="true">Bond</a>
                          </li>
                          <li role="presentation" class=""><a href="#future_tab_content" role="tab" id="future-tab" data-toggle="tab" aria-expanded="false" >Future</a>
                          </li>
                          <li role="presentation" class=""><a href="#equity_tab_content" role="tab" id="equity_tab" data-toggle="tab" aria-expanded="false">Equity</a>
                          </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                        	
                        	
                        	
                        	<div role="tabpanel" class="tab-pane fade active in" id="etf_tab_content" aria-labelledby="etf-tab">
           
                            <table id="etf-table" class="table table-striped table-bordered bulk_action">
                              <thead>
                                <tr>
                                  <th>Symbol/ISIN</th>
                                  <th>Quntity</th>
                                  <th>InitialPrice</th>
                                  <th>CurrentPrice</th>
                                  <th>Profit</th>
                                  <th>Operations</th>
                                </tr>
                              </thead>


                              <tbody>
                                
                               <c:forEach items="${results}" var="position" >
                                <tr id = ${position.value.securityid}>
                                  <td>${position.key}</td>
                                  <td>${position.value.quantity}</td>
                                  <td>${position.value.initialprice}</td>
                                  <td>${position.value.currentprice}</td>
                                  <td>${position.value.profit}</td>
                                  <td>
                                    <a href="viewSecurity?positionid=${position.value.positionid}" class="btn btn-primary btn-xs" ><i class="fa fa-folder"></i> View </a>
                                    <a class="btn btn-info btn-xs" data-toggle="modal" data-target=".salePosition" ><i class="fa fa-pencil"></i> Sale </a>
                                  </td>
                                </tr>
							  </c:forEach>        
                                
                              </tbody>
                            </table>
                          </div>
                        	
                        	
                          <div role="tabpanel" class="tab-pane fade" id="bond_tab_content" aria-labelledby="bond-tab">

                            <!-- start recent activity -->                         
                            <table id="bonds-table" class="table table-striped table-bordered bulk_action">
                              <thead>
                               <tr>
                                  <th>ISIN</th>
                                  <th>Issuer</th>
                                  <th>Coupon</th>
                                  <th>Maturity</th>
                                  <th>Quntity</th>
                                  <th>InitialPrice</th>
                                  <th>CurrentPrice</th>
                                  <th>Profit</th>
                                  <th>Operations</th>
                                </tr>
                              </thead>


                              <tbody>
                                 <c:forEach items="${bondresults}" var="bond" >
                                <tr id = ${bond.key.securityid}>
                                  <td>${bond.value.isin}</td>
                                  <td>${bond.value.issuer}</td>
                                  <td>${bond.value.coupon}</td>
                                  <td>${bond.value.maturity}</td>
                                  <td>${bond.key.quantity}</td>
                                  <td>${bond.key.initialprice}</td>
                                  <td>${bond.key.currentprice}</td>
                                  <td>${bond.key.profit}</td>
                                  <td>
                                    <a href="viewSecurity?positionid=${bond.key.positionid}" class="btn btn-primary btn-xs" ><i class="fa fa-folder"></i> View </a>
                                     <a class="btn btn-info btn-xs" data-toggle="modal" data-target=".salePosition" ><i class="fa fa-pencil"></i> Sale </a>
                                  </td>
                                </tr>
							  </c:forEach> 
                                
                              </tbody>
                            </table>
                            <!-- end recent activity -->

                          </div>
                          <div role="tabpanel" class="tab-pane fade" id="future_tab_content" aria-labelledby="future-tab">

                            <!-- start user projects -->
                            future-tab
                           <table id="future-table" class="table table-striped table-bordered bulk_action">
                              <thead>
                               <tr >
                                  <th>Symbol</th>
                                  <th>DeliveryDate</th>                       
                                  <th>Quntity</th>
                                  <th>InitialPrice</th>
                                  <th>CurrentPrice</th>
                                  <th>Profit</th>
                                  <th>Operations</th>
                                </tr>
                              </thead>


                              <tbody>
                                <c:forEach items="${futureresults}" var="future" >
                                <tr id = ${future.key.securityid}>
                                  <td>${future.value.symbol}</td>
                                  <td>${future.value.deliverydate}</td>
                                  <td>${future.key.quantity}</td>
                                  <td>${future.key.initialprice}</td>
                                  <td>${future.key.currentprice}</td>
                                  <td>${future.key.profit}</td>
                                  <td>
                                    <a href="viewSecurity?positionid=${future.key.positionid}" class="btn btn-primary btn-xs" ><i class="fa fa-folder"></i> View </a>
                                     <a class="btn btn-info btn-xs" data-toggle="modal" data-target=".salePosition" ><i class="fa fa-pencil"></i> Sale </a>
                                  </td>
                                </tr>
							  </c:forEach>
                              </tbody>
                            </table>
                            <!-- end user projects -->

                          </div>
                          <div role="tabpanel" class="tab-pane fade" id="equity_tab_content" aria-labelledby="equity_tab">
                            equity-table
                            <table id="equity-table" class="table table-striped table-bordered bulk_action">
                              <thead>
                                <tr>
                                  <th>Symbol</th>
                                  <th>Sector</th>
                                  <th>Industry</th>
                                  <th>Quntity</th>
                                  <th>InitialPrice</th>
                                  <th>CurrentPrice</th>
                                  <th>Profit</th>
                                  <th>Operations</th>
                                </tr>
                              </thead>
							  <c:forEach items="${equityresults}" var="equity" >
                                <tr id = ${equity.key.securityid}>
                                  <td>${equity.value.symbol}</td>
                                  <td>${equity.value.sector}</td>
                                  <td>${equity.value.industry}</td>
                                  <td>${equity.key.quantity}</td>
                                  <td>${equity.key.initialprice}</td>
                                  <td>${equity.key.currentprice}</td>
                                  <td>${equity.key.profit}</td>
                                  <td>
                                    <a href="viewSecurity?positionid=${equity.key.positionid}" class="btn btn-primary btn-xs" ><i class="fa fa-folder"></i> View </a>
                                    <a class="btn btn-info btn-xs" data-toggle="modal" data-target=".salePosition" ><i class="fa fa-pencil"></i> Sale </a>
                                  </td>
                                </tr>
							  </c:forEach>

                              <tbody>
                                
                              </tbody>
                            </table>
                          </div>

                        </div>
                      </div>
                </div>
          	</div>
          </div>
          
          
        </div>
      </div>
    </div>
  </div>
</div>
<!-- /page content -->

<!-- modal -->
<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
        </button>
        <h4 class="modal-title" id="myModalLabel2">Edit Found Manager</h4>
      </div>
      <div class="modal-body">
        <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">First Name <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Last Name <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Email <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="email" id="email" name="email" required="required" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="phone">Phone <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="Phone" name="Phone" required="required" class="form-control col-md-7 col-xs-12">
            </div>
          </div>

          <div class="ln_solid"></div>
          <div class="form-group">
            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
              <button class="btn btn-primary" type="button" data-dismiss="modal">Cancel</button>
              <button class="btn btn-primary" type="reset">Reset</button>
              <button type="submit" class="btn btn-success">Submit</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<div class="modal fade salePosition" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog ">
                          <div class="modal-content">

                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                              </button>
                              <h4 class="modal-title" id="myModalLabel2">Sale Position</h4>
                            </div>
                            <div class="modal-body">
                              <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                                <div class="form-group">
                                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Sale Quantity <span class="required">*</span>
                                  </label>
                                  <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                                  </div>
                                </div>
                                
                                
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                  <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                    <button class="btn btn-primary" type="button" data-dismiss="modal">Cancel</button>
                                    <button class="btn btn-primary" type="reset">Reset</button>
                                    <button type="submit" class="btn btn-success">Submit</button>
                                  </div>
                                </div>
                              </form>
                            </div>
                          </div>
                        </div>
                      </div>
<!-- footer content -->
<footer>
  <div class="pull-right">
    Java 6 <a href="https://github.com:LittleZ1995/Portfolio-Manager.git
">Portfolio</a>
  </div>
  <div class="clearfix"></div>
</footer>
<!-- /footer content -->
</div>
</div>

<!-- jQuery -->
<script src="<%=path %>/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="<%=path %>/js/bootstrap.min.js"></script>

<!-- Echart -->
<script type="text/javascript" src="<%=path %>/js/echarts.js"></script>
<!-- Datatable -->
<script type="text/javascript" src="<%=path %>/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme Scripts -->
<script src="<%=path %>/js/custom.js"></script>
<script type="text/javascript">
  var portfolioGraphPie = echarts.init(document.getElementById('portfolio-graphPie'));
  var option = {
		   title: {
             text: 'Portfolio Compoment',
             left: 'center',
             top: 20,
             textStyle: {
                 color: '#73879C'
             }
         },
		     tooltip : {
             trigger: 'item',
             formatter: "{b} : {c} "
         },

		    legend: {
		        orient : 'vertical',
		        x : 'left',
		        data:['Bond','Equity','Future']
		    },
		    toolbox: {
		        show : true,
		        feature : {		           
		            saveAsImage : {show: true}
		        }
		    },
		    
		    calculable : true,
		    series : [
		        {     
		            type:'pie',
		            radius : '55%',
		            center: ['50%', '60%'],
		            data:[
		              	{value:"${bondvalue}", name:'Bond'},
		                {value:"${equityvalue}", name:'Equity'},
		                {value:"${futurevalue}", name:'Future'}


		            ],
		             roseType: 'radius',
                 label: {
                     normal: {
                         textStyle: {
                             color: '#73879C'
                         },
                         formatter: "{b} : {d}%"
                     }
                 }
		        }
		    ]
		};

        // 使用刚指定的配置项和数据显示图表。
        portfolioGraphPie.setOption(option);

        var portfolioFraphLine = echarts.init(document.getElementById('portfolio-graphLine'));
        var option = {
                color: ['#3498DB'],

                title: {
                    text: 'Portfolio',
                    left: 'center',
                    top: 20,
                    textStyle: {
                        color: '#73879C'
                    }
                },

                grid: {
                  left: '3%',
                  right: '4%',
                  bottom: '3%',
                  containLabel: true
                },
                xAxis : [
                {
                  data : ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                  axisLine: {
                    // show: false
                    lineStyle: {
                      color:'#73879C'
                    }
                  },
                  axisTick: {
                    show: false
                  }
                }
                ],
                yAxis : [
                {
                  type : 'value',
                  axisLine: {
                    lineStyle: {
                      color:'#73879C'
                    }
                  },
                  axisTick: {
                    show: false,
                  },
                }
                ],
                series : [
                {

                  type:'line',
                  data:["${portfolio.profit}", 52, 200, 334, 390, 330, 220],
                  label:{
                    normal:{
                      show:true
                    }
                  }
                }
                ]
              };

        // 使用刚指定的配置项和数据显示图表。
        portfolioFraphLine.setOption(option);
      </script>
    </body>
    </html>