window.addEventListener('turbo:load', function () {
  const parentCategory = document.getElementById('parent-category')
  const selectWrap = document.getElementById('select-wrap')

  const selectChildElement = (selectForm) => {
    if (document.getElementById(selectForm) !== null) {
      document.getElementById(selectForm).remove()
    }
  }
  //Ajax通信を可能にする
  const XHR = new XMLHttpRequest();
  const categoryXHR = (id) => {
    XHR.open("GET", `/category/${id}`, true);
    XHR.responseType = "json";
    XHR.send();
  }
  //子カテゴリの値を全て取得する関数
  const getChildCategoryData = () => {
    const parentValue = parentCategory.value
    categoryXHR(parentValue)

    //レスポンスを受信したら発火する
    XHR.onload = () => {
      const childItems = XHR.response.item;
      appendChildSelect(childItems)
      const childCategory = document.getElementById('child-select')

      //子カテゴリーの変化によって孫カテゴリー選択フォームを表示する
      childCategory.addEventListener('change', () => {
        selectChildElement('grand-child-select-wrap')
        getGrandChildCategoryData(childCategory)
      })
    }
  }

  //子カテゴリの選択フォームを表示
  const appendChildSelect = (items) => {
    const childWrap = document.createElement('div')
    const childSelect = document.createElement('select')

    childWrap.setAttribute('id', 'child-select-wrap')
    childSelect.setAttribute('id', 'child-select')
    childSelect.setAttribute('class', 'select-box')

    items.forEach(item => {
      const childOption = document.createElement('option')
      childOption.innerHTML = item.name
      childOption.setAttribute('value', item.id)
      childSelect.appendChild(childOption)
    });

    childWrap.appendChild(childSelect)
    selectWrap.appendChild(childWrap)
  }

  const getGrandChildCategoryData = (grandChildCategory) => {
    const grandChildValue = grandChildCategory.value
    categoryXHR(grandChildValue)

    XHR.onload = () => {
      const grandChildItems = XHR.response.item;
      appendGrandChildSelect(grandChildItems)
    }
  }

  //孫カテゴリーの選択フォームを表示
  const appendGrandChildSelect = (items) => {
    const childWrap = document.getElementById('child-select-wrap')
    const grandChildWrap = document.createElement('div')
    const grandChildSelect = document.createElement('select')
    grandChildSelect.setAttribute('class', 'select-box')

    items.forEach(item => {
      const grandChildOption = document.createElement('option')
      grandChildOption.innerHTML = item.name
      grandChildOption.setAttribute('value', item.id)

      grandChildSelect.appendChild(grandChildOption)
    });

    grandChildWrap.appendChild(grandChildSelect)
    childWrap.appendChild(grandChildWrap)
  }

  //親カテゴリーの変化によってスタート
  parentCategory.addEventListener('change', function () {
    selectChildElement('child-select-wrap')
    getChildCategoryData()
  })
})