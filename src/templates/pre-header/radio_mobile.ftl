<audio id="myAudioMobile" preload="metadata" controls style="width:0; display:none !important;">
  <source src="https://cactus2.uninorte.edu.co/audio/stream.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>
<img id="icon" src="${images_folder}/uninorte/header/entrega-22.png" />

<div class="uniorte-heading__signal">
  <img class="fm" src="${images_folder}/uninorte/header/entrega-20.png" />
  <img class="signal" src="${images_folder}/uninorte/header/entrega-29.png" />
</div>

<script>
  var audio = document.getElementById('myAudioMobile');
  var icon = document.getElementById('icon');

  icon.onclick = function () {
    console.log('clic')
    if (audio.paused) {
      audio.play();
      icon.src = "${images_folder}/uninorte/header/entrega-23.png";
    } else {
      audio.pause();
      icon.src = "${images_folder}/uninorte/header/entrega-22.png";
    }
  }
</script>