"use strict"

class Serie {
  constructor() {}

  previsualizeImage() {
    let fileInput = document.querySelector("#serie_cover_page_image");
    let imageElement = document.querySelector(".image_preview");
    let fileLabel = document.querySelector(".file-cta > .file-label");

    fileInput.addEventListener("change", () => {
      let file = fileInput.files[0];
      let urlImage = URL.createObjectURL(file);
      imageElement.src = urlImage;
      fileLabel.textContent = file.name;
    });
  }

  closeNotification() {
    document.addEventListener("DOMContentLoaded", () => {
      let element = document.querySelectorAll(".notification .delete") || [];
      element.forEach(($delete) => {
        const $notification = $delete.parentNode;
        $delete.addEventListener("click", () => {
          $notification.parentNode.removeChild($notification);
        });
      });
    });
  }
}

let serie = new Serie();
serie.previsualizeImage();
serie.closeNotification();
