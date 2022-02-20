// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "./../../../node_modules/rescript/lib/es6/curry.js";
import * as React from "react";
import * as Core from "@material-ui/core";
import * as ProductActions$ReactTypescriptReasonTraining from "../ProductActions/ProductActions.bs.js";

function ProductRow(Props) {
  var id = Props.id;
  var name = Props.name;
  var description = Props.description;
  var quantity = Props.quantity;
  var price = Props.price;
  var deleteFromCart = Props.deleteFromCart;
  var updateCart = Props.updateCart;
  var match = React.useState(function () {
        return 0;
      });
  var setNewProductTotal = match[1];
  var newProductTotal = match[0];
  var descriptionTextHelper = function (text) {
    if (text !== undefined) {
      return ": " + text;
    } else {
      return null;
    }
  };
  var quantityHelper = function (value) {
    if (value === 0) {
      return "";
    } else {
      return value;
    }
  };
  return React.createElement(Core.TableRow, {
              children: null,
              key: name
            }, React.createElement(Core.TableCell, {
                  children: null,
                  scope: "row"
                }, React.createElement("strong", undefined, name), descriptionTextHelper(description)), React.createElement(Core.TableCell, {
                  align: "right",
                  children: price
                }), React.createElement(Core.TableCell, {
                  align: "right",
                  children: quantity
                }), React.createElement(Core.TableCell, {
                  align: "right",
                  children: React.createElement(Core.TextField, {
                        id: "standard-basic",
                        label: "New Quantity",
                        onChange: (function (e) {
                            return Curry._1(setNewProductTotal, e.target.value);
                          }),
                        type: "number",
                        value: quantityHelper(newProductTotal)
                      })
                }), React.createElement(Core.TableCell, {
                  align: "right",
                  children: React.createElement(ProductActions$ReactTypescriptReasonTraining.make, {
                        deleteFromCartResetField: (function (param) {
                            Curry._1(deleteFromCart, id);
                            return Curry._1(setNewProductTotal, (function (param) {
                                          return 0;
                                        }));
                          }),
                        updateCartResetField: (function (param) {
                            Curry._2(updateCart, id, newProductTotal);
                            return Curry._1(setNewProductTotal, (function (param) {
                                          return 0;
                                        }));
                          })
                      })
                }));
}

var make = ProductRow;

export {
  make ,
  
}
/* react Not a pure module */
