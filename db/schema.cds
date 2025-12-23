namespace mycap;

entity Employees @(
    label: 'Employee Data'
) {

    key ID     : UUID ;
    name       : String(50) @assert.notEmpty;
    position   : String(50);
    salary     : Integer;
}
annotate mycap.Employees with @(
  grant: [
    {role:'Admin', permission:'READ,WRITE'},
    {role:'Viewer', permission:'READ'}
  ]
);

