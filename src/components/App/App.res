open Product

@react.component
let make = () => {
    open Mui
    let initialCartValue = 0.0
    let (cart, setCart) = React.useState(_ => productDetails)
    let (calculatedPrice, setCalculatedPrice) = React.useState(_ => initialCartValue)

    let deleteFromCart = id => {
        let updatedCart = CartUtils.findIndexAndUpdateQuantity(cart, id, 0);
        setCart(_ => updatedCart)
    }

    let updateCart = (id, value) => {
        let updatedCart = CartUtils.findIndexAndUpdateQuantity(cart, id, value)
        setCart(_ => updatedCart)
    }

    let calculatePrice = () => {
        let totalPrice = CartUtils.calculateTotalPrice(cart, initialCartValue)
        setCalculatedPrice(_ => totalPrice)
    }

    <>
        <Typography align=#center variant=#h3>
            {"Welcome to the React Rescript Demo App" -> React.string}
        </Typography>
        <Typography align=#center variant=#body1>
            {"Welcome to the React Rescript Demo App" -> React.string}
        </Typography>
        <Container>
            <ProductTable
                cart={cart}
                deleteFromCart={deleteFromCart}
                updateCart={updateCart}
            />
            <Card className="shopping-cart">
                <Button variant=#contained color=#primary onClick={_ => calculatePrice()}>
                    {"Calculate Price"->React.string}
                </Button>
                <h3>{"Your total is"->React.string}</h3>
                <h3>
                {calculatedPrice
                ->Js.Float.toFixedWithPrecision(~digits=2)
                ->React.string
                }
                </h3>
            </Card>
        </Container>
    </>
}