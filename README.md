# README

A simple REST API using Ruby on Rails. The purpose is to create a platform to receive Purchase Orders from other systems, group them on Batches and follow the Orders in the production pipeline until the dispatch.

**Structure**
I thought about creating 3 resources, which are: Order, Batch and FinancialReport.

Order, would be responsible for:
- create a new order;
- find the status of an order;
- List the Orders by Purchase Channel, status or others filters.

Batch, would be responsible for:
- create a batch;
- update the batch, changing the status from production to closing;
- Close part of a Batch for a Delivery Service.

FinancialReport, would be responsible for:
- showing, for each Purchase Channel, how many Orders and Total Value (Sum) for those Orders.

Additional Stuff - how to improve the platform in the future:

- A security layer, to prevent script kiddies from messing up our Orders and putting on YouTube.
We can build an Authorization/Authentication mechanism, the methods must be accessed by authenticated users only. Ex: use the bcrypt and jwt gem.

- A permission layer, that way we can be sure that each user is only working with their stuff.
We can use the token to indentify the user, and to ensure that privileged collections or actions are properly protected from unauthorized use.

- Sometimes people confuses Moto G5 with Moto G5S and we need a way to modify Orders in production.
We can change a purchase order and notify the operators in some way.

- A web UI to control everything directly, without the need of going thought the API.
As theoretically there would already be an api created in ruby on rails, a centralized application with the same technology could be made to reuse resources.

Tecnologies

* Ruby version: 2.5.1
* Rails version: 5.2.3
* Database: Postgres
