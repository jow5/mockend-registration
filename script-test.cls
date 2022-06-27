ExternalService.mockendregistrationa_Registration reg;
reg = new ExternalService.mockendregistrationa_Registration();
// only subtypes need objects (like phone number in example 2)
reg.FirstName = 'Jake';
reg.LastName = 'White';

ExternalService.mockendregistrationa.addRegistration_Request req;
req = new ExternalService.mockendregistrationa.addRegistration_Request();
req.body = reg;
system.debug(req);

ExternalService.mockendregistrationa svc = new ExternalService.mockendregistrationa();
system.debug(svc);
try{
  svc.addRegistration(req);
} catch (Exception ex){
    system.debug(ex);
}