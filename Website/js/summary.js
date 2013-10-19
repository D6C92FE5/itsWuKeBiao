
;(function () {
    "use strict"

    WebService.Fetch(function (data) {
        var group = window.location.search || window.location.hash
        var data = JSON.parse(data)
        var nameToFree = {}
        data.forEach(function (e) {
            if ((e.group || '') == group) {
                nameToFree[e.name] = e.free
            }
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

    window.onhashchange = function () {
        window.location.reload();
    }
})()
