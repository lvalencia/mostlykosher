//= require spec_helper
//= require admin/press_upload

describe('PressUpload', function (){
  describe('#initialize', function (){
    it('should initialize dropzone', function () {
      var $root = $('#konacha');
      $root.append(domElement.dropzone());
      var classTarget = '.dropzone';

      var dropzone = $(classTarget).get(0).dropzone;
      expect(dropzone).to.be.undefined;

      PressUpload({ target: classTarget }).initialize();

      dropzone = $(classTarget).get(0).dropzone;
      expect(dropzone).to.not.be.undefined;
    });
  });
});
