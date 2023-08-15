document.addEventListener('turbo:load', function () {
  //出品・編集フォームを取得
  const postForm = document.getElementById('item-images');
  //プレビュー表示スペースを取得
  const previewList = document.getElementById('previews');
  //出品・編集フォームがない場合は終了
  if (!postForm) return null;
  //投稿枚数の制限を定義
  const imageLimits = 5;

  //プレビュー画像を生成・表示する関数
  const buildPreviewImage = (dataIndex, blob) => {
    //画像を表示するためのdiv要素を生成
    const previewWrapper = document.createElement('div');
    previewWrapper.setAttribute('class', 'preview');
    previewWrapper.setAttribute('data-index', dataIndex);
    //表示する画像を生成
    const previewImage = document.createElement('img');
    previewImage.setAttribute('class', 'preview-image');
    previewImage.setAttribute('src', blob);
    //削除ボタン生成
    const deleteButton = document.createElement("div");
    deleteButton.setAttribute("class", "image-delete-button");
    deleteButton.innerText = "削除";
    //削除ボタンがクリックされるとfile_fieldを削除する
    deleteButton.addEventListener("click", () => deleteImage(dataIndex));
    //生成したHTML要素をブラウザに表示
    previewWrapper.appendChild(previewImage);
    previewWrapper.appendChild(deleteButton);
    previewList.appendChild(previewWrapper);
  };

  //file-fieldを生成・表示する関数
  const buildNewFileField = () => {
    //最後のfile-fieldを取得
    const lastFileField = document.querySelector('input[type="file"][name="item[images][]"]:last-child');
    //最後のfile-fieldのdata-index+1を定義
    const nextDataIndex = Number(lastFileField.getAttribute('data-index')) + 1;
    //file-field生成
    const newFileField = document.createElement('input');
    newFileField.setAttribute('type', 'file');
    newFileField.setAttribute('name', 'item[images][]');
    newFileField.setAttribute('data-index', nextDataIndex);
    //追加されたfile_fieldにchangeイベントをセット
    newFileField.addEventListener("change", changedFileField);
    //生成したfile_fieldを表示
    const fileFieldsArea = document.querySelector('.click-upload');
    fileFieldsArea.appendChild(newFileField);
  };

  //指定したdata-indexを持つプレビューとfile_fieldを削除
  const deleteImage = (dataIndex) => {
    const deletePreviewImage = document.querySelector(`.preview[data-index="${dataIndex}"]`);
    deletePreviewImage.remove();
    const deleteFileField = document.querySelector(`input[type="file"][data-index="${dataIndex}"]`);
    deleteFileField.remove();

    //画像枚数制限が最大の時に削除ボタンが押されるとfile_fieldを追加する
    const imageCount = document.querySelectorAll(".preview").length;
    if (imageCount == imageLimits - 1) buildNewFileField();
  };

  //input要素の値に変化が起きたら呼び出される関数
  const changedFileField = (e) => {
    //data-index(何番目を操作しているか)を取得
    const dataIndex = e.target.getAttribute('data-index');

    const file = e.target.files[0];
    //fileが空ならプレビュー等を削除して終了
    if (!file) {
      deleteImage(dataIndex);
      return null;
    };
    const blob = window.URL.createObjectURL(file);

    //data-indexを用いてすでにプレビューが表示されているか確認
    const alreadyPreview = document.querySelector(`.preview[data-index="${dataIndex}"]`);
    //クリックしたfile_fieldのdata-indexと同じ番号のプレビュー画像がすでにある場合は差し替えのみ行う
    if (alreadyPreview) {
      const alreadyPreviewImage = alreadyPreview.querySelector("img");
      alreadyPreviewImage.setAttribute("src", blob);
      return null;
    };

    buildPreviewImage(dataIndex, blob);

    //画像枚数の制限以下ならfile_fieldを追加
    const imageCount = document.querySelectorAll(".preview").length;
    if(imageCount < imageLimits) buildNewFileField();
  };

  //input要素を取得
  const fileField = document.querySelector('input[type="file"][name="item[images][]"]');
  //input要素に変化が起きたら関数を呼び出す
  fileField.addEventListener('change', changedFileField);
});