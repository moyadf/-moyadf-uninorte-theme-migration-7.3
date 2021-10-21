document.getElementById('myAudio').addEventListener('click', function (e) {
    e = e || window.event;
    audio.muted = !audio.muted;
    e.preventDefault();
}, false);

function audioControl() {
    var pause = document.getElementById('pause');
    var play = document.getElementById('play');
    var myAudio = document.getElementById('myAudio');

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
