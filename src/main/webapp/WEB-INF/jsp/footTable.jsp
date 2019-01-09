<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<body>
</tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="app-footer">
            <div class="wrapper">
                <span class="pull-right"><a href="#">回到顶部<i class="fa fa-long-arrow-up"></i></a></span>Thanks for https://datatables.net  technical support.  Copyright (C) 2008-2019, SpryMedia Ltd.  By---Dawn.
            </div>
        </footer>
    <div>
    <!-- Javascript Libs -->
    <script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/vue.js"></script>
    <script type="text/javascript" src="<%=path%>/js/Chart.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/bootstrap-switch.min.js"></script>

    <script type="text/javascript" src="<%=path%>/js/jquery.matchHeight-min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="<%=path%>/js/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="<%=path%>/js/select2.full.min.js"></script>
    <!-- Javascript -->
    <script type="text/javascript" src="<%=path%>/js/app.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#example').dataTable( {
          "scrollY": "200px",
          "scrollCollapse": "true",
           "paging": "false"
        } );
      } );
</script>
</body>
</html>
