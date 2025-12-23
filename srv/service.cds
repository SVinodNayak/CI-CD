using mycap from '../db/schema';
using { Northwind as external } from './external/Northwind';

service CatalogService {

    @odata.draft.enabled
    entity Employees as projection on mycap.Employees;

    entity Customers as projection on external.Customers;

}
