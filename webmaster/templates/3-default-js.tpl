<!-- BEGIN CORE PLUGINS -->
<script src="{$WEB_ROOT}/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="{$WEB_ROOT}/assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
 <script src="{$WEB_ROOT}/assets/global/plugins/moment.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}//assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}//assets/global/plugins/clockface/js/clockface.js" type="text/javascript"></script>

{if $datatable_flag}
<script src="{$WEB_ROOT}/assets/global/scripts/datatable.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
{/if}
<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="{$WEB_ROOT}/assets/global/scripts/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
{if $page=="doc_crear"}
 <script src="{$WEB_ROOT}/assets/pages/scripts/form-wizard.min.js" type="text/javascript"></script>
{/if}
<script src="{$WEB_ROOT}/assets/pages/scripts/components-bootstrap-switch.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/pages/scripts/table-datatables-buttons.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/pages/scripts/ui-modals.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/pages/scripts/components-date-time-pickers.min.js" type="text/javascript"></script>

<!-- END PAGE LEVEL SCRIPTS -->

<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="{$WEB_ROOT}/assets/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/js/functions.js" type="text/javascript"></script> 
<!-- {if $page=="login"}
<script src="{$WEB_ROOT}/assets/pages/scripts/login.min.js" type="text/javascript"></script>   
{/if} -->
<script src="{$WEB_ROOT}/js/{$page}.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->