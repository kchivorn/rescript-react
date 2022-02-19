@react.component

let make = (~deleteFromCartResetField, ~updateCartResetField) => {
    open Mui
    open Icons
    <>
        <IconButton color={#primary} onClick={updateCartResetField}>
            <AddShoppingCartIcon />
        </IconButton>
        <IconButton onClick={deleteFromCartResetField}>
            <DeleteIcon />
        </IconButton>
    </>
}