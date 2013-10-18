
;(function () {
    "use strict"

    $('button').click(function () {
        var free = []
        $('.choice').each(function (i) {
            if ($(this).data('status') == 'free') {
                free.push(i)
            }
        })
        var data = {
            name: $('#name').val(),
            free: free
        }
        WebService.Submit(JSON.stringify(data), function () { alert("提交成功") })
        return false;
    })

    WebService.Fetch(function (data) {
        var data = JSON.parse(data)
        var nameToFree = {}
        data.forEach(function (e) {
            nameToFree[e.name] = e.free
        })
        var frees = []
        for (var i = 0; i < 5*7; i++) {
            frees[i] = []
        }
        var names = Object.keys(nameToFree).sort()
        names.forEach(function (name) {
            nameToFree[name].forEach(function (i) {
                frees[i].push(name)
            })
        })
        window.frees = frees
        $('.names').each(function (i) {
            $(this).html(frees[i].join('<br>'))
        })
    })
})()
