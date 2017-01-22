$(window).load(function(){

    var male_div = '<div id="male"><input type="checkbox" name="body_parts[]" value="Head" id="mHead"/><label id="mhead" for="mHead"></label><input type="checkbox" name="body_parts[]" value="Neck" id="mNeck"/><label id="mneck" for="mNeck"></label><input type="checkbox" name="body_parts[]" value="Chest" id="mChest"/><label id="mchest" for="mChest"></label><input type="checkbox" name="body_parts[]" value="Abdomen" id="mAbdomen"/><label id="mabdomen" for="mAbdomen"></label><input type="checkbox" name="body_parts[]" value="Leg" id="mLeg"/><label id="mleg" for="mLeg"></label></div>'

    var female_div = '<div id="female"><input type="checkbox" name="body_parts[]" value="Head" id="fHead"/><label id="fhead" for="fHead"></label><input type="checkbox" name="body_parts[]" value="Neck" id="fNeck"/><label id="fneck" for="fNeck"></label><input type="checkbox" name="body_parts[]" value="Chest" id="fChest"/><label id="fchest" for="fChest"></label><input type="checkbox" name="body_parts[]" value="Abdomen" id="fAbdomen"/><label id="fabdomen" for="fAbdomen"></label><input type="checkbox" name="body_parts[]" value="Leg" id="fLeg"/><label id="fleg" for="fLeg"></label></div>'

    $("#btn-male").click(function() {
        $("#male").remove();
        $("#female").remove();
        $(".content").append(male_div);
    });

    $("#btn-female").click(function() {
        $("#male").remove();
        $("#female").remove();
        $(".content").append(female_div);
    });

    if ( document.getElementById("mgender").checked == true) {
        $(".content").append(male_div);
    }
    if ( document.getElementById("fgender").checked == true) {
        $(".content").append(female_div);
    }
});

