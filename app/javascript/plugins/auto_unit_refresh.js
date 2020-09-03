const autoUnitRefresh = () => {
  const taskBuildingForm = document.querySelector("#task_building_id");
  const taskUnitForm = document.querySelector("#task_unit_id");
  taskBuildingForm.addEventListener('change', () => {
    const selectedBuildingId = taskBuildingForm.options[taskBuildingForm.selectedIndex].value;
    const unitOptions = taskUnitForm.querySelectorAll("option:not(:first-child)");
    unitOptions.forEach((unitOption) => {
      taskUnitForm.value = ""
      if (unitOption.dataset.buildingId !== selectedBuildingId){
        unitOption.style.display = "none"
      } else {
        unitOption.style.display = "unset"
      }
    });
  });

};

export { autoUnitRefresh };
