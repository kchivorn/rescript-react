@react.component
let make = (~id, ~name, ~description, ~quantity, ~price, ~deleteFromCart, ~updateCart) => {
    open Mui
    open React
    let (newProductTotal, setNewProductTotal) = useState(_ => 0)
    let descriptionTextHelper = text =>
        switch text {
            |Some(description) => `: ${description}` -> React.string
            |None => React.null
        }
    let quantityHelper = value =>
        if value === 0 {
            ""->TextField.Value.string
        } else {
            value -> TextField.Value.int
        }

    <TableRow key={name}>
        <TableCell scope="row">
            <strong>{name->string}</strong>
            {description -> descriptionTextHelper}
        </TableCell>
        <TableCell align=#right>{price->React.float}</TableCell>
        <TableCell align=#right>{quantity->React.int}</TableCell>
        <TableCell align=#right>
            <TextField
                \"type"="number"
                id="standard-basic"
                value={newProductTotal->quantityHelper}
                label={"New Quantity"->React.string}
                onChange={(e: ReactEvent.Form.t) => 
                    setNewProductTotal((e->ReactEvent.Form.target)["value"])
                }
            />
        </TableCell>
        <TableCell align=#right>
            <ProductActions
                deleteFromCartResetField = {(_: ReactEvent.Mouse.t) => {
                    deleteFromCart(id)
                    setNewProductTotal(_ => 0);
                }}
                updateCartResetField = {(_: ReactEvent.Mouse.t) => {
                    updateCart(id, newProductTotal)
                    setNewProductTotal(_ => 0);
                }}
            />
        </TableCell>
    </TableRow>
}