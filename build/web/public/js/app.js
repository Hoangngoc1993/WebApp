$ = document.querySelector.bind(document)

const poster = $('.poster__img')
const nextPosterBtn = $('.poster__next')
const prevPosterBtn = $('.poster__prev')
var posterIndex = 0
// function
images = [
    {
        link: './public/assets/img/poster/fiona-img.jpg'
    },
    {
        link: './public/assets/img/poster/img1.jpg'
    },
    {
        link: './public/assets/img/poster/img2.jpg'
    },
    {
        link: './public/assets/img/poster/img3.jpg'
    },
    {
        link: './public/assets/img/poster/fiona-04.jpg'
    }
]

function showPoster() {
    var img = `<img src="${images[posterIndex].link}" style="max-width: 100%;" alt="">`
    poster.innerHTML = img
}

function nextPoster() {
    nextPosterBtn.onclick = function() {
        if(posterIndex == images.length - 1) {
            posterIndex = 0
        } else {
            posterIndex++
        }
        showPoster()
    }
}
function prevPoster() {
    prevPosterBtn.onclick = function() {
        if(posterIndex == 0) {
            posterIndex = images.length - 1
        } else {
            posterIndex--
        }
        showPoster()
    }
}

// MainApp
showPoster()
nextPoster()
prevPoster()
