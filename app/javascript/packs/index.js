"use strict"

const CSRF_TOKEN = document.querySelector('meta[name="csrf-token"]').content;

class IndexPage {
  constructor() {}

  filterSeries() {
    let formSerieSearch = document.querySelector("#serie_search");
    let selectElements = {
      selectWithLetter: document.querySelector("#q_name_start"),
      selectWithType: document.querySelector("#q_state_id_eq"),
      selectWithState: document.querySelector("#q_serie_type_id_eq")
    };

    for (const key in selectElements) {
      if (Object.hasOwnProperty.call(selectElements, key)) {
        const selectElement = selectElements[key];
        selectElement.addEventListener("change", (e) => {
          formSerieSearch.submit();
        });
      }
    }
  }
}

var indexPage = new IndexPage();
indexPage.filterSeries();
