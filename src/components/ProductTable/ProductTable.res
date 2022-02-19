@react.component
let make = (~cart, ~deleteFromCart, ~updateCart) => {
    open Mui
    open Product
    <TableContainer component={TableContainer.Component.string("Paper")} className="product-table">
      <Table>
        <TableHead>
          <TableRow>
            <TableCell>{"Product Name"->React.string}</TableCell>
            <TableCell align=#right>{"Price"->React.string}</TableCell>
            <TableCell align=#right>{"Current Quantity"->React.string}</TableCell>
            <TableCell align=#right>{"New Quantity"->React.string}</TableCell>
            <TableCell align=#right>{"Actions"->React.string}</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {cart
          -> Belt.Array.map(product => {
            <ProductRow
              id={product.id}
              name={product.name}
              description={product.description}
              quantity={product.quantity}
              price={product.price}
              deleteFromCart={deleteFromCart}
              updateCart={updateCart}
            />
          })
          ->React.array}
        </TableBody>
      </Table>
    </TableContainer>
}