// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(function(){
    $("#butday").click(function(){
        $("#sched_two_week:visible").hide(5);
        $("#schedule:hidden").show(10);
    });

    $("#buttwoweek").click(function(){
        $("#schedule:visible").hide(5);
        $("#sched_two_week:hidden").show(10);
        $("#twoweek").css(border, "5px solid #003355;");

    });
    $("#user_user_birthday").datepicker();

    $("#datepicker").datepicker({
        dayNames: ['Понедельник','Вторник','Среда','Четверг','Пятница','Суббота','Воскресенье'],
        dayNamesMin: ['Вс','Пн','Вт','Ср','Чт','Пт','Сб'],
        firstDay: 1,
        monthNames: ['Январь','Февраль','Март','Апрель','Май','Июнь','Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
        nextText: '>> ',
        prevText: '<<',
        showOtherMonths: true,
        selectOtherMonths: true
    });

    $("#clickup").click(function(){
        $("body,html").animate({
            scrollTop: 0
        }, 800);
        return false;
    });
    $("#question").click(function(){
        $(this).next("#quest").slideToggle();
        $(this).toggleClass("active");

        if ($(this).hasClass("active"))
            $(this).find('span').html('&#x25B2;')
        else $(this).find('span').html("&#x25BC;")
    });

    $("#user_user_status").change(function(){
        if ($("#user_user_status option:selected").val() == "student")
            $("#status:hidden").show('fast');
        else {
            $("#status:visible").hide('fast');
            $("#user_group_id [value='']").attr("selected", "selected");
        };
    });
});
