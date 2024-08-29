let videoContainer = document.getElementById('video-container');
let btnOpenVideo = document.getElementById('btn-open-video-text');
let btnOpenIcon = document.getElementById('btn-open-video');
let btnClose = document.getElementById('btn-close');

btnOpenVideo.addEventListener('click', ()=>{
    videoContainer.style.width = '100%';
});

btnOpenIcon.addEventListener('click', ()=>{
    videoContainer.style.width = '100%';
});

btnClose.addEventListener('click', ()=>{
    videoContainer.style.width = '0';
});