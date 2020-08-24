
function CheckAllUnassigned(headerchk) {
    var gvUnassigned = $get('dgCandidateUnassign');
    var i;

    var inputs;
    
    if (headerchk.checked) {
        for (i = 0; i < gvUnassigned.rows.length; i++) {
            inputs = gvUnassigned.rows[i].getElementsByTagName('input');
            inputs[0].checked = true;
        }
    } else {
        for (i = 0; i < gvUnassigned.rows.length; i++) {
            inputs = gvUnassigned.rows[i].getElementsByTagName('input');
            inputs[0].checked = false;
        }
    }


}

function CheckAllAssigned(headerchk) {
    var gvUnassigned = $get('dgCandidate');
    var i;

    var inputs;

    if (headerchk.checked) {
        for (i = 0; i < gvUnassigned.rows.length; i++) {
            inputs = gvUnassigned.rows[i].getElementsByTagName('input');
            inputs[0].checked = true;
        }
    } else {
        for (i = 0; i < gvUnassigned.rows.length; i++) {
            inputs = gvUnassigned.rows[i].getElementsByTagName('input');
            inputs[0].checked = false;
        }
    }


}



function CheckAllLG(headerchk) {
    var gvUnassigned = $get('dgLeftGrid');
    var i;

    var inputs;

    if (headerchk.checked) {
       
        for (i = 0; i < gvUnassigned.rows.length; i++) {
            inputs = gvUnassigned.rows[i].getElementsByTagName('input');
            inputs[0].checked = true;
        }
    } else {
        for (i = 0; i < gvUnassigned.rows.length; i++) {
            inputs = gvUnassigned.rows[i].getElementsByTagName('input');
            inputs[0].checked = false;
        }
    }


}



function CheckAllRg(headerchk) {
    var gvUnassigned = $get('dgRightGrid');
    var i;

    var inputs;

    if (headerchk.checked) {
        for (i = 0; i < gvUnassigned.rows.length; i++) {
            inputs = gvUnassigned.rows[i].getElementsByTagName('input');
            inputs[0].checked = true;
        }
    } else {
        for (i = 0; i < gvUnassigned.rows.length; i++) {
            inputs = gvUnassigned.rows[i].getElementsByTagName('input');
            inputs[0].checked = false;
        }
    }


}



function CheckAllQuestion(headerchk) {
    var gvUnassigned = $get('dgQuestion');
    var i;

    var inputs;

    if (headerchk.checked) {
        for (i = 0; i < gvUnassigned.rows.length; i++) {
            inputs = gvUnassigned.rows[i].getElementsByTagName('input');
            inputs[0].checked = true;
        }
    } else {
        for (i = 0; i < gvUnassigned.rows.length; i++) {
            inputs = gvUnassigned.rows[i].getElementsByTagName('input');
            inputs[0].checked = false;
        }
    }


}