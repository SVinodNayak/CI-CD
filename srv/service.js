const cds = require("@sap/cds");

module.exports = cds.service.impl(async function () {

  const { Employees } = this.entities;
  const northwind = await cds.connect.to("Northwind");

  this.on("READ", "Customers", async req => {
    return northwind.run(req.query);
  });

  this.before("CREATE", Employees, req => {
    console.log("Creating employee");
  });

  this.on("CREATE", Employees, async req => {
    return req.data;
  });

  this.on("DELETE", Employees, async req => {
    console.log("Deleting employee");
  });

});
