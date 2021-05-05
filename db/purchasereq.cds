namespace app.purchasereq;

using { Country } from '@sap/cds/common';
type BusinessKey : String(10);
type SDate : DateTime;
type LText : String(1024);


entity PurchaseReq_Header {
  key ID : Integer;
  ITEMS  : Composition of many PurchaseReq_Items on ITEMS.INTHeader = $self;
  PURCHASE_DATE  : SDate;
};
entity PurchaseReq_Items {
	key INTHeader : association to PurchaseReq_Header;
	key ITEM_ID : BusinessKey;
    PurchasingOrganization :  String(4);
    CompanyCode            :  String(4);
    PurchaseRequisitionItem  : String(04); 
    PurchaseRequisitionType  : String(02);
    AccountAssignmentCategory : String(01);
    CostCenter                : String(5);
    GLACCOUNT                 : String(6);
    RequisitionerName         : String(6);
    PurchasingGroup           : String(3);
    MaterialGroup             : String(3);
    Material                  : String(4);
    PurchaseRequisitionItemText : String(60);
    DeliveryDate                : SDate;
    Plant                       : String(04);
    StorageLocation             : String(4);
    RequestedQuantity           : String(3);
    BaseUnit                    : String(02);
    PurchaseRequisitionPrice    : String(6);
    PurReqnItemCurrency         : String(3);
    Supplier                    : String(10);
};