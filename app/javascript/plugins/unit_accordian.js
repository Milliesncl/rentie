function accordian() {
  const acc = document.querySelectorAll(".accordion");
    acc.forEach((tr) => {
      tr.addEventListener("click", () => {
        tr.nextElementSibling.classList.toggle("active");
      });
    });
}

export { accordian };
