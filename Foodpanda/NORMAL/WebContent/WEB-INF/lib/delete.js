function delRow(obj, removeRow) {
		var tr = this.getRowObj(obj);
		if (tr != null) {
			tr.parentNode.removeChild(tr);
			alert(removeRow + "----removeRow");
			//$("#p_" + removeRow).show();
			//$("#p1_" + removeRow).show();
		} else {
			throw new Error("the given object is not contained by the table");
		}
	}
	function getRowObj(obj) {
		var i = 0;
		while (obj.tagName.toLowerCase() != "tr") {
			obj = obj.parentNode;
			if (obj.tagName.toLowerCase() == "table")
				return null;
		}
		return obj;
	}