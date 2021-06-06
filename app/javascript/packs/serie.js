
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
}

seriePage = new Serie();
seriePage.previsualizeImage();
