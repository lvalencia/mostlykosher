//= require spec_helper
//= require admin/press_upload/dom_inserter

describe('DomInserter', function () {
  describe('callback', function () {
    it('inserts response into the dom', function () {
      var rootTarget = '#konacha';
      var callbackId = 'inserted';
      var $root = $(rootTarget);
      var ø = Object.create(null);
      DomInserter({ target: rootTarget }).callback(ø, domElement.divWithId(callbackId));

      expect(document.getElementById(callbackId)).to.not.be.null;
    });
  });
});
