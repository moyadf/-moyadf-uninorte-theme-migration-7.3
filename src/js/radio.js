document.getElementById('myAudio').addEventListener('click', function (e) {
    e = e || window.event;
    audio.muted = !audio.muted;
    e.preventDefault();
}, false);

function audioControl() {
    var playdiv = document.getElementById('playdiv');
    var pausediv = document.getElementById('pausediv');
    var myAudio = document.getElementById('myAudio');
    var label = document.getElementById('live');


    if (myAudio.paused) {
        myAudio.play();
        pause.style.display = 'block';
        play.style.display = 'none';
    } else {
        myAudio.pause();
        pause.style.display = 'none';
        play.style.display = 'block';
    }
}
