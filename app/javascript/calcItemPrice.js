function calcItemPrice() {
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("keyup", () => {
    const itemPrice = parseFloat(priceInput.value);
    if (isNaN(itemPrice)) {
      const addTaxPrice = document.getElementById("add-tax-price");
      const addProfit = document.getElementById("profit");
      addTaxPrice.innerHTML = "";
      addProfit.innerHTML = "";
    } else {
      let taxPrice = itemPrice * 0.1;
      taxPrice = Math.floor(taxPrice);
      let profit = itemPrice - taxPrice;
      profit = Math.floor(profit);
      const addTaxPrice = document.getElementById("add-tax-price");
      const addProfit = document.getElementById("profit");
      addTaxPrice.innerHTML = `${taxPrice}`;
      addProfit.innerHTML = `${profit}`;
    }
  });
};
function calcItemPriceForRender() {
  const priceInput = document.getElementById("item-price");
  const itemPrice = parseFloat(priceInput.value);
  if (isNaN(itemPrice)) {
    const addTaxPrice = document.getElementById("add-tax-price");
    const addProfit = document.getElementById("profit");
    addTaxPrice.innerHTML = "";
    addProfit.innerHTML = "";
  } else {
    let taxPrice = itemPrice * 0.1;
    taxPrice = Math.floor(taxPrice);
    let profit = itemPrice - taxPrice;
    profit = Math.floor(profit);
    const addTaxPrice = document.getElementById("add-tax-price");
    const addProfit = document.getElementById("profit");
    addTaxPrice.innerHTML = `${taxPrice}`;
    addProfit.innerHTML = `${profit}`;
  }
  priceInput.addEventListener("keyup", () => {
    const itemPrice = parseFloat(priceInput.value);
    if (isNaN(itemPrice)) {
      const addTaxPrice = document.getElementById("add-tax-price");
      const addProfit = document.getElementById("profit");
      addTaxPrice.innerHTML = "";
      addProfit.innerHTML = "";
    } else {
      let taxPrice = itemPrice * 0.1;
      taxPrice = Math.floor(taxPrice);
      let profit = itemPrice - taxPrice;
      profit = Math.floor(profit);
      const addTaxPrice = document.getElementById("add-tax-price");
      const addProfit = document.getElementById("profit");
      addTaxPrice.innerHTML = `${taxPrice}`;
      addProfit.innerHTML = `${profit}`;
    }
  });
};

window.addEventListener('turbo:load', calcItemPrice);
window.addEventListener('turbo:render', calcItemPriceForRender);