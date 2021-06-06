'use strict'

const CSRF_TOKEN = document.querySelector('meta[name="csrf-token"]').content

class IndexPage {
  constructor() {
  }

  filterSeries() {
    let selectElements = {
      selectWithLetter: document.querySelector('#with-letters'),
      selectWithType: document.querySelector('#with-types'),
      selectWithState: document.querySelector('#with-states')
    }

    for (const key in selectElements) {
      if (Object.hasOwnProperty.call(selectElements, key)) {
        const selectElement = selectElements[key];
        selectElement.addEventListener('change', (e) => {
          let data = {
            selectWithLetter: document.querySelector('#with-letters').value,
            selectWithType: document.querySelector('#with-types').value,
            selectWithState: document.querySelector('#with-states').value
          }
          fetch("/filter_series", {
            method: 'POST',
            body: JSON.stringify(data),
            headers: {
              'X-CSRF-Token': CSRF_TOKEN,
              'Content-Type': 'application/json'
            }
          })
            .then((res) => res.json())
            .catch(error => console.log(error))
            .then((series) => {
              let seriesContainer = document.querySelector('#series_container')
              seriesContainer.innerHTML = ""
              series.forEach(serie => {
                seriesContainer.insertAdjacentHTML('beforeend', `
                <div class="column is-one-fifth">
                  <div class="card">
                    <header class="card-header">
                      <p class="card-header-title">${serie.name}</p>
                    </header>
                    <div class="card-image">
                      <img src="${serie.cover_page}" style="width: 100%; height: 350px;">
                    </div>
                    <footer class="card-footer">
                      <span class="card-footer-item">
                        <a href="/series/${serie.id}">Show</a>
                      </span>
                      <span class="card-footer-item">
                        <a href="/series/${serie.id}/edit">Edit</a>
                      </span>
                      <span class="card-footer-item">
                        <a data-confirm="Are you sure?" 
                           rel="nofollow" 
                           data-method="delete" 
                           href="/series/${serie.id}">Destroy</a>
                      </span>
                    </footer>
                  </div>
                </div>
                `)
              });
            })
        })
      }
    }
  }
}

var indexPage = new IndexPage()
indexPage.filterSeries()

