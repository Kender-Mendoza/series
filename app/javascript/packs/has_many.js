'use strict'

class HasMany {
  constructor() {

  }

  addHasManySerie() {
    let hasManyBtn = document.querySelector('#add_has_many_serie')
    let hasManyContainer = document.querySelector('table > tbody')

    hasManyBtn.addEventListener('click', (e) => {
      let iterator = document.querySelectorAll('table.table > tbody > tr').length + 1
      e.preventDefault()
      hasManyContainer.insertAdjacentHTML('beforeend', `
      <tr>
        <td>
          <div class="field">
            <div class="control">
              <input class="input" type="number" value="0" name="serie[episodes_attributes][${iterator}][number]" id="serie_episodes_attributes_${iterator}_number">
            </div>
          </div>
        </td>
        <td>
          <div class="field">
            <div class="control">
              <input class="input" value="" type="time" name="serie[episodes_attributes][${iterator}][duration]" id="serie_episodes_attributes_${iterator}_duration">
            </div>
          </div>
        </td>
        <td>
          <div class="field">
            <div class="control">
              <input class="input" type="text" value="" name="serie[episodes_attributes][${iterator}][name]" id="serie_episodes_attributes_${iterator}_name">
            </div>
          </div>
        </td>
        <td>
          <div class="field">
            <div class="control">
              <input class="input" value="" type="date" name="serie[episodes_attributes][${iterator}][aired]" id="serie_episodes_attributes_${iterator}_aired">
            </div>
          </div>
        </td>
        <td>
          <div class="delete_container">
            <span class="delete delete--new"></span>
          </div>
        </td>
      </tr>
      `)
      this.addDeleteEvent()
    })
  }

  deleteHasManySerie() {
    let hasManyDeleteBtb = document.querySelectorAll('.delete_container .delete_container__btn')

    hasManyDeleteBtb.forEach(deleteBtn => {
      deleteBtn.addEventListener('click', () => {
        let row = deleteBtn.parentElement.parentElement.parentElement
        row.classList.add('is-hidden')
      })
    });
  }

  addDeleteEvent() {
    let deleteBtbs = document.querySelectorAll('.delete_container .delete--new')
    let btnLength = deleteBtbs.length - 1
    let lastBtn = deleteBtbs[btnLength]

    lastBtn.addEventListener('click', () => {
      let row = lastBtn.parentElement.parentElement.parentElement
      row.remove()
    })    
  }
}

var hasMany = new HasMany()
hasMany.addHasManySerie()
hasMany.deleteHasManySerie() 