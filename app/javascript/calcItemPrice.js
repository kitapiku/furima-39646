function calcItemPrice() {
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("keyup", () => {
    const itemPrice = parseFloat(priceInput.value);
    if (isNaN(itemPrice)) {
      const addTaxPrice = document.getElementById("add-tax-price");
      addTaxPrice.innerHTML = "";
    } else {
      let taxPrice = itemPrice * 0.1;
      const addTaxPrice = document.getElementById("add-tax-price");
      addTaxPrice.innerHTML = `${taxPrice}`;
    }
  });
};

window.addEventListener('turbo:load', calcItemPrice);