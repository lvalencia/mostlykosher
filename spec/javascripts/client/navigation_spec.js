//= require spec_helper
//= require sinon
//= require client/navigation

describe('navigation', function () {
  describe('#listen', function () {
    var behavior, behaviorMock;

    before(function () {
      behavior = {
        applyBehavior: function () {}
      };
      behaviorMock = sinon.mock(behavior);
    });

    it('adds behavior through listeners', function () {
      var classTarget = 'navbar';
      var $root = $('#konacha');
      var idTarget = '#scrollLink';

      $root.append(domElement.navigationBar(idTarget));
      $root.append(domElement.divWithId(idTarget));

      Navigation({
        target: classTarget,
        roles: [behavior]
      }).listen();

      behaviorMock.expects("applyBehavior").once().returns(function () {});
    });
  });
});
