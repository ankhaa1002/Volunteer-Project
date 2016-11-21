var TableEditable = function () {

    return {

        //main function to initiate the module
        init: function () {
            function restoreRow(oTable, nRow) {
                var aData = oTable.fnGetData(nRow);
                var jqTds = $('>td', nRow);

                for (var i = 0, iLen = jqTds.length; i < iLen; i++) {
                    oTable.fnUpdate(aData[i], nRow, i, false);
                }

                oTable.fnDraw();
            }

            function editRow(oTable, nRow) {
                var aData = oTable.fnGetData(nRow);
                var jqTds = $('> td', nRow);
                var needful = [];
                $(nRow).find('.needful').each(function(){
                		needful.push($(this).text());
                });
                $(nRow).find('.fuck').remove();
                
                if($(nRow).find('.needful').length == 0){
                	jqTds[0].innerHTML = '<input type="text" class="m-wrap small" value="' + aData[0] + '">';
	                jqTds[1].innerHTML = '<input type="text" class="m-wrap small" value="' + aData[1] + '">';
	                jqTds[2].innerHTML = '<input type="text" class="m-wrap small" value="' + aData[2] + '">';
	                jqTds[3].innerHTML = '<input type="text" class="m-wrap small" value="' + aData[3] + '">';
	                jqTds[4].innerHTML = '<a class="edit" href="">Save</a>';
	                jqTds[5].innerHTML = '<a class="cancel" href="">Cancel</a>';
                }else{
	                jqTds[0].innerHTML = '<input type="text" class="m-wrap small" value="' + needful[0] + '">';
	                jqTds[1].innerHTML = '<input type="text" class="m-wrap small" value="' + needful[1] + '">';
	                jqTds[2].innerHTML = '<input type="text" class="m-wrap small" value="' + needful[2] + '">';
	                jqTds[3].innerHTML = '<input type="text" class="m-wrap small" value="' + needful[3] + '">';
	                jqTds[4].innerHTML = '<a class="edit" href="">Save</a>';
	                jqTds[5].innerHTML = '<a class="cancel" href="">Cancel</a>';
                }
            }

            function saveRow(oTable, nRow) {
                var jqInputs = $('input', nRow);
                for(i = 0; i<jqInputs.length;i++)
                	console.log(jqInputs[i].value);
                oTable.fnUpdate('<input type="hidden" class="fuck" name="task_title" value="' + jqInputs[0].value + '"><div class="needful">'+ jqInputs[0].value +'</div>', nRow, 0, false);
                oTable.fnUpdate('<input type="hidden" class="fuck" name="task_description" value="' + jqInputs[1].value + '"><div class="needful">'+ jqInputs[1].value +'</div', nRow, 1, false);
                oTable.fnUpdate('<input type="hidden" class="fuck" name="task_start_date" value="' + jqInputs[2].value + '"><div class="needful">'+ jqInputs[2].value +'</div', nRow, 2, false);
                oTable.fnUpdate('<input type="hidden" class="fuck" name="task_end_date" value="' + jqInputs[3].value + '"><div class="needful">'+ jqInputs[3].value +'</div', nRow, 3, false);
                oTable.fnUpdate('<a class="edit" href="">Edit</a>', nRow, 4, false);
                oTable.fnUpdate('<a class="delete" href="">Delete</a>', nRow, 5, false);
                oTable.fnDraw();
            }

            function cancelEditRow(oTable, nRow) {
                var jqInputs = $('input', nRow);
                oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
                oTable.fnUpdate(jqInputs[1].value, nRow, 1, false);
                oTable.fnUpdate(jqInputs[2].value, nRow, 2, false);
                oTable.fnUpdate(jqInputs[3].value, nRow, 3, false);
                oTable.fnUpdate('<a class="edit" href="">Edit</a>', nRow, 4, false);
                oTable.fnDraw();
            }

            var oTable = $('#sample_editable_1').dataTable({
                "aLengthMenu": [
                    [5, 15, 20, -1],
                    [5, 15, 20, "All"] // change per page values here
                ],
                // set the initial value
                "iDisplayLength": 5,
                "sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
                "sPaginationType": "bootstrap",
                "oLanguage": {
                    "sLengthMenu": "_MENU_ records per page",
                    "oPaginate": {
                        "sPrevious": "Prev",
                        "sNext": "Next"
                    }
                },
                "aoColumnDefs": [{
                        'bSortable': false,
                        'aTargets': [0]
                    }
                ]
            });

            jQuery('#sample_editable_1_wrapper .dataTables_filter input').addClass("m-wrap medium"); // modify table search input
            jQuery('#sample_editable_1_wrapper .dataTables_length select').addClass("m-wrap xsmall"); // modify table per page dropdown

            var nEditing = null;

            $('#sample_editable_1_new').click(function (e) {
                e.preventDefault();
                var aiNew = oTable.fnAddData(['', '', '', '',
                        '<a class="edit" href="">Edit</a>', '<a class="cancel" data-mode="new" href="">Cancel</a>'
                ]);
                var nRow = oTable.fnGetNodes(aiNew[0]);
                editRow(oTable, nRow);
                nEditing = nRow;
            });

            $('#sample_editable_1 a.delete').live('click', function (e) {
                e.preventDefault();

                if (confirm("Are you sure to delete this row ?") == false) {
                    return;
                }

                var nRow = $(this).parents('tr')[0];
                oTable.fnDeleteRow(nRow);
            });

            $('#sample_editable_1 a.cancel').live('click', function (e) {
                e.preventDefault();
                if ($(this).attr("data-mode") == "new") {
                    var nRow = $(this).parents('tr')[0];
                    oTable.fnDeleteRow(nRow);
                } else {
                    restoreRow(oTable, nEditing);
                    nEditing = null;
                }
            });

            $('#sample_editable_1 a.edit').live('click', function (e) {
                e.preventDefault();

                /* Get the row as a parent of the link that was clicked on */
                var nRow = $(this).parents('tr')[0];

                if (nEditing !== null && nEditing != nRow) {
                    /* Currently editing - but not this row - restore the old before continuing to edit mode */
                    restoreRow(oTable, nEditing);
                    editRow(oTable, nRow);
                    nEditing = nRow;
                } else if (nEditing == nRow && this.innerHTML == "Save") {
                    /* Editing this row and want to save it */
                    saveRow(oTable, nEditing);
                    nEditing = null;
                } else {
                    /* No edit in progress - let's start one */
                    editRow(oTable, nRow);
                    nEditing = nRow;
                }
            });
        }

    };

}();