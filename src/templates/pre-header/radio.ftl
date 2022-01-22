<!--<audio id="myAudio" preload="metadata">
  <source src="https://cactus2.uninorte.edu.co/;stream.mp3" />
  Unfortunately your browser doesn't support html5
  audio streaming, please update your browser.
</audio>-->
<audio id="myAudio" preload="metadata" controls style="width:0; display:none !important;">
    <source src="https://cactus2.uninorte.edu.co/audio/stream.mp3"type="audio/mpeg">
    Your browser does not support the audio element.
</audio>

<button class="control" id="control" onclick="audioControl()">
  <img alt="play" id="play" class="play" src="${images_folder}/uninorte/header/entrega-22.png" />
  <img alt="pause" id="pause" class="pause" src="${images_folder}/uninorte/header/entrega-23.png" />
</button>

<div class="uniorte-heading__signal">
  <img class="fm" src="${images_folder}/uninorte/header/entrega-20.png" />
  <img class="signal" src="${images_folder}/uninorte/header/entrega-29.png" />
</div>