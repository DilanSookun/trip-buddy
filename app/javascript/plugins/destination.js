const initSlider = () => {

const slider = document.querySelector('.slider-container'),
slides = Array.from(document.querySelectorAll('.slide'))

let isDragging = false,
startPos = 0,
currentTranslate = 0,
prevTranslate = 0,
animationID,
currentIndex = 0

slides.forEach((slide, index) => {
const slideImage = slide.querySelector('img')

slideImage.addEventListener('dragstart', (e) => e.preventDefault())

slide.addEventListener('touchstart', touchStart(index))
slide.addEventListener('touchend', touchEnd)
slide.addEventListener('touchmove', touchMove)

slide.addEventListener('mousedown', touchStart(index))
slide.addEventListener('mouseup', touchEnd)
slide.addEventListener('mousemove', touchMove)
slide.addEventListener('mouseleave', touchEnd)
})


window.addEventListener('resize', setPositionByIndex)


/* window.oncontextmenu = function (event) {
event.preventDefault()
event.stopPropagation()
return false
}
*/
function getPositionX(event) {
return event.type.includes('mouse') ? event.pageX : event.touches[0].clientX
}

function touchStart(index) {
return function (event) {
  currentIndex = index
  startPos = getPositionX(event)
  isDragging = true
  animationID = requestAnimationFrame(animation)
  slider.classList.add('grabbing')
}
}

function touchMove(event) {
if (isDragging) {
  const currentPosition = getPositionX(event)
  currentTranslate = prevTranslate + currentPosition - startPos
}
}

function touchEnd() {
cancelAnimationFrame(animationID)
isDragging = false
const movedBy = currentTranslate - prevTranslate


if (movedBy < -100 && currentIndex < slides.length - 1) currentIndex += 1


if (movedBy > 100 && currentIndex > 0) currentIndex -= 1

setPositionByIndex()

slider.classList.remove('grabbing')
}

function animation() {
setSliderPosition()
if (isDragging) requestAnimationFrame(animation)
}

function setPositionByIndex() {
currentTranslate = currentIndex * -window.innerWidth
prevTranslate = currentTranslate
setSliderPosition()
}

function setSliderPosition() {
slider.style.transform = `translateX(${currentTranslate}px)`
}

}

export { initSlider };