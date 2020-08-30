const carouselBuildings = () => {
  const allBuildings = document.querySelectorAll(".building-index");
  const previousBtn = document.querySelector("#previous")
  const nextBtn = document.querySelector("#next")
  const maxBuildings = allBuildings.length - 1

  let activeIndex = 0;
  allBuildings[activeIndex].classList.add("active")

  nextBtn.addEventListener('click', () => {
    if (activeIndex < maxBuildings) {
      activeIndex = activeIndex + 1
      previousBtn.classList.remove("disable")
      allBuildings[activeIndex - 1].classList.remove("active")
      allBuildings[activeIndex].classList.add("active")
    } else {
      nextBtn.classList.add("disable")
    }
  })

  previousBtn.addEventListener('click', () => {
    if (activeIndex > 0) {
    activeIndex = activeIndex - 1
    nextBtn.classList.remove("disable")
    allBuildings[activeIndex + 1].classList.remove("active")
    allBuildings[activeIndex].classList.add("active")
    } else {
      previousBtn.classList.add("disable")
    }
  })

}

export { carouselBuildings };
