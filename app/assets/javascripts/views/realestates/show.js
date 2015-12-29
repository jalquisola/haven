(function() {
    var v = document.getElementsByClassName("youtube-player");
    for (var n = 0; n < v.length; n++) {
        var p = document.createElement("div");
        p.innerHTML = labnolThumb(v[n].dataset.id, v[n].dataset.image);
        p.onclick = labnolIframe;
        v[n].appendChild(p);
    }
})();

function labnolThumb(id, image) {
    var img = "<img class='youtube-thumb' src='//i.ytimg.com/vi/" + id + "/hqdefault.jpg'>";
    if(image){
        img = "<img class='youtube-thumb' src='" + image + "'>"
    }

    return  img + '<div class="play-button"></div>';
}

function labnolIframe() {
    var iframe = document.createElement("iframe");
    iframe.setAttribute("src", "//www.youtube.com/embed/" + this.parentNode.dataset.id + "?autoplay=1&autohide=1&border=0&wmode=opaque&enablejsapi=1&controls=1&showinfo=1&listType=playlist&list=PLuNeaxbXnjJeTZdTi9l04uUaQVtXI8Nvw");
    iframe.setAttribute("frameborder", "0");
    iframe.setAttribute("id", "youtube-iframe");
    this.parentNode.replaceChild(iframe, this);
    ga('send', 'event', 'Videos', 'play', window.location.pathname);
}

