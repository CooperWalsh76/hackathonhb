using app.purchasereq from '../db/purchasereq';

service PurchaseReqService {
    entity PurchaseReq_Header
        as projection on purchasereq.PurchaseReq_Header;
    entity PurchaseReq_Items
        as projection on  purchasereq.PurchaseReq_Items;
}