// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Belt_Array from "./../../../node_modules/rescript/lib/es6/belt_Array.js";
import * as Core from "@material-ui/core";
import * as ProductRow$ReactTypescriptReasonTraining from "../ProductRow/ProductRow.bs.js";

function ProductTable(Props) {
  var cart = Props.cart;
  var deleteFromCart = Props.deleteFromCart;
  var updateCart = Props.updateCart;
  return React.createElement(Core.TableContainer, {
              children: React.createElement(Core.Table, {
                    children: null
                  }, React.createElement(Core.TableHead, {
                        children: React.createElement(Core.TableRow, {
                              children: null
                            }, React.createElement(Core.TableCell, {
                                  children: "Product Name"
                                }), React.createElement(Core.TableCell, {
                                  align: "right",
                                  children: "Price"
                                }), React.createElement(Core.TableCell, {
                                  align: "right",
                                  children: "Current Quantity"
                                }), React.createElement(Core.TableCell, {
                                  align: "right",
                                  children: "New Quantity"
                                }), React.createElement(Core.TableCell, {
                                  align: "right",
                                  children: "Actions"
                                }))
                      }), React.createElement(Core.TableBody, {
                        children: Belt_Array.map(cart, (function (product) {
                                return React.createElement(ProductRow$ReactTypescriptReasonTraining.make, {
                                            id: product.id,
                                            name: product.name,
                                            description: product.description,
                                            quantity: product.quantity,
                                            price: product.price,
                                            deleteFromCart: deleteFromCart,
                                            updateCart: updateCart
                                          });
                              }))
                      })),
              className: "product-table",
              component: "Paper"
            });
}

var make = ProductTable;

export {
  make ,
  
}
/* react Not a pure module */
