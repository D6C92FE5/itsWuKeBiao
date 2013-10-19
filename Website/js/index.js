
;(function () {
    "use strict"

    function displaychoice($cell) {
        var status = status || $cell.data('status')
        if (status === 'free') {
            $cell.removeClass('busy').addClass('free').html('无课')
        } else {
            $cell.removeClass('free').addClass('busy').html('有课')
        }
    }

    function togglechoice($cell, status) {
        status = status || $cell.data('status') === 'free' ? 'busy' : 'free'
        $cell.data('status', status)
        displaychoice($cell)
    }

    $('.choice').each(function () {
        var $cell = $(this)
        displaychoice($cell)
        $cell.click(function () {
            togglechoice($(this))
        })
    })

    $('button').click(function () {
        var free = []
        $('.choice').each(function (i) {
            if ($(this).data('status') == 'free') {
                free.push(i)
            }
        })
        var data = {
            group: window.location.search || window.location.hash,
            name: $('#name').val(),
            free: free
        }
        WebService.Submit(JSON.stringify(data), function () { alert("提交成功") })
        return false;
    })

    window.onhashchange = function () {
        window.location.reload();
    }
})()
