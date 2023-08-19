const categorySet = function () {
  const parentCategory = document.getElementById('parent-category');
  const selectWrap = document.getElementById('select-wrap');

  const selectChildElement = (selectForm) => {
    if (document.getElementById(selectForm) !== null) {
      document.getElementById(selectForm).remove()
    }
  };
  //Ajax通信を可能にする
  const XHR = new XMLHttpRequest();
  const categoryXHR = (id) => {
    XHR.open("GET", `/category/${id}`, true);
    XHR.responseType = "json";
    XHR.send();
  };
  //子カテゴリの値を全て取得する関数
  const getChildCategoryData = () => {
    const parentValue = parentCategory.value;
    categoryXHR(parentValue);

    //レスポンスを受信したら発火する
    XHR.onload = () => {
      const childItems = XHR.response.item;
      appendChildSelect(childItems);
      const childCategory = document.getElementById('child-select');
      getGrandChildCategoryData(childCategory);

      //子カテゴリーの変化によって孫カテゴリー選択フォームを表示する
      childCategory.addEventListener('change', () => {
        selectChildElement('grand-child-select-wrap');
        getGrandChildCategoryData(childCategory);
      });
    };
  };

  //子カテゴリの選択フォームを表示
  const appendChildSelect = (items) => {
    const childWrap = document.createElement('div');
    const childSelect = document.createElement('select');

    childWrap.setAttribute('id', 'child-select-wrap');
    childSelect.setAttribute('id', 'child-select');
    childSelect.setAttribute('class', 'select-box');

    items.forEach(item => {
      const childOption = document.createElement('option');
      childOption.innerHTML = item.name;
      childOption.setAttribute('value', item.id);
      const categoryDataElement = document.getElementById("category-data");
      if (categoryDataElement !== null) {
        const childCategoryId = categoryDataElement.dataset.childId;
        if (item.id == childCategoryId) {
          childOption.setAttribute('selected', 'selected');
        }
      }
      childSelect.appendChild(childOption);
    });

    childWrap.appendChild(childSelect);
    selectWrap.appendChild(childWrap);
  };

  const getGrandChildCategoryData = (grandChildCategory) => {
    const grandChildValue = grandChildCategory.value;
    categoryXHR(grandChildValue);

    XHR.onload = () => {
      const grandChildItems = XHR.response.item;
      appendGrandChildSelect(grandChildItems);
    }
  };

  //孫カテゴリーの選択フォームを表示
  const appendGrandChildSelect = (items) => {
    const childWrap = document.getElementById('child-select-wrap');
    const grandChildWrap = document.createElement('div');
    const grandChildSelect = document.createElement('select');
    grandChildWrap.setAttribute('id', 'grand-child-select-wrap');
    grandChildSelect.setAttribute('id', 'grand-child-select');
    grandChildSelect.setAttribute('class', 'select-box');

    items.forEach(item => {
      const grandChildOption = document.createElement('option');
      grandChildOption.innerHTML = item.name;
      grandChildOption.setAttribute('value', item.id);
      const categoryDataElement = document.getElementById("category-data");
      if (categoryDataElement !== null) {
        const grandchildCategoryId = categoryDataElement.dataset.grandchildId;
        if (item.id == grandchildCategoryId) {
          grandChildOption.setAttribute('selected', 'selected');
        }
      }
      grandChildSelect.appendChild(grandChildOption);
    });

    grandChildWrap.appendChild(grandChildSelect);
    childWrap.appendChild(grandChildWrap);
  };

  //親カテゴリーに値が入っているなら即座にスタート
  if (parentCategory.value !== null) {
    selectChildElement('child-select-wrap');
    getChildCategoryData();
  };

  //親カテゴリーの変化によってスタート
  parentCategory.addEventListener('change', function () {
    selectChildElement('child-select-wrap');
    getChildCategoryData();
  });

  //送信ボタン
  const submitButton = document.getElementById('submit-btn');
  submitButton.addEventListener('click', function (e) {
    const selectedElement = document.getElementById('grand-child-select');
    const selectedValue = selectedElement.value;

    // 隠しフィールドに選択された値を設定
    const hiddenField = document.createElement('input');
    hiddenField.type = 'hidden';
    hiddenField.name = 'category_id'; // パラメータ名
    hiddenField.value = selectedValue;

    // フォームに隠しフィールドを追加
    const form = document.getElementById('form'); // 適切なIDを使用して置き換える
    form.appendChild(hiddenField);

    // イベントのデフォルト動作を防止
    e.preventDefault();

    // フォームを送信
    form.submit();
  });
};

window.addEventListener('turbo:render', categorySet);
