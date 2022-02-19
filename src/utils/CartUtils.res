open Product
open Belt

let calculateProductPrice = (product) => {
    let quantity = product.quantity -> Some -> Option.getWithDefault(0) -> Int.toFloat
    let price = product.price -> Some ->Option.getWithDefault(0.0)
    price *. quantity
}

let combinePrice = (sum, product) => sum +. calculateProductPrice(product)

let calculateTotalPrice = (cart, initialTotal) => {
    Array.reduce(cart, initialTotal, combinePrice)
}

let evaluateProductQuantity = (id, updatedQuantity, product) => {
    product.id === id && product.quantity !== updatedQuantity ?
        {...product, quantity: updatedQuantity} :
        product
}

let findIndexAndUpdateQuantity = (cart, id, quantity) => {
    let evaluateProduct = evaluateProductQuantity(id)(quantity);
    Array.map(cart, evaluateProduct)
}