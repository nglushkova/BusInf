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

    $('ul.tabs').delegate('li:not(.current)', 'click', function() {
		$(this).addClass('current').siblings().removeClass('current')
			.parents('div.section').find('div.box').hide().eq($(this).index()).fadeIn(150);
	});

    $("#butday").click(function(){
        $("#sched_two_week:visible").hide(5);
        $("#schedule:hidden").show(10);
        $(this).css("border-color", "#003355");
        $("#buttwoweek").css("border-color", "#207DB0");
        $("#main").css("height", "700px");
    });

    $("#event_group_id").change(function(){
        $("#student").html('<% @st = User.find_all_by_group_id(@event.group_id) %>');
        return false;
    });

    $("#buttwoweek").click(function(){
        $("#date:visible").hide(5);
        $("#schedule:visible").hide(5);
        $("#sched_two_week:hidden").show(10);
        $(this).css("border-color", "#003355");
        $("#butday").css("border-color", "#207DB0");
        $("#main").css("height", "850px");
        return false;
     });
    $("#event_ev_date").datepicker({
        dayNames: ['Воскресенье','Понедельник','Вторник','Среда','Четверг','Пятница','Суббота'],
        dayNamesMin: ['Вс','Пн','Вт','Ср','Чт','Пт','Сб'],
        firstDay: 1,
        monthNames: ['Январь','Февраль','Март','Апрель','Май','Июнь','Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
        nextText: '>> ',
        prevText: '<<',
        showOtherMonths: true,
        selectOtherMonths: true,
        dateFormat: 'dd.mm.yy'
    });

    $("#datepicker").datepicker({
        dayNames: ['воскресенье','понедельник','вторник','среда','четверг','пятница','суббота'],
        dayNamesMin: ['Вс','Пн','Вт','Ср','Чт','Пт','Сб'],
        firstDay: 1,
        monthNames: ['Январь','Февраль','Март','Апрель','Май','Июнь','Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
        nextText: '>> ',
        prevText: '<<',
        showOtherMonths: true,
        selectOtherMonths: true,
        dateFormat: 'DD dd.mm.yy',
        onSelect: function(dateText) {
            $("#date:hidden").show(5);
            $("#sched_two_week:visible").hide(5);
            $("#schedule:hidden").show(5);
            $("#date").val("Расписание на " + dateText);
        }
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
        if ($("#user_user_status option:selected").val() == "student"){
            $("#code:visible").hide(5);
            $("#status:hidden").show(5);
        }
        else {
            if ($("#user_user_status option:selected").val() == "teacher"){
                $("#status:visible").hide(5);
                $("#code:hidden").show(5);
            }
            else{
                $("#status:visible").hide(5);
                $("#code:visible").hide(5);
                $("#user_group_id [value='']").attr("selected", "selected");
                $("#user_code").val() = '';
            }
        };
    });




    (function(){
//        здесь можно написать скрит, который бдет выполняться сразу после загрузки страницы
    })  ()  ;

    $('#addRow1').click(function(){
        var AddingRow1 = $('#table_1 tbody>#item').first();
        console.log($('#table_1 tbody>#item'));
        AddingRow1.clone(true).insertAfter('#table_1 tbody>#item:last');
      });
});
