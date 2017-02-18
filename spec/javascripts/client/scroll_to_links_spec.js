//= require spec_helper
//= require client/scroll_to_links

describe('ScrollToLinks', function () {
  describe('#applyBehavior', function () {
    it('makes links scrollable on click', function () {
      var domObject = $(domElement.navigationBar());
      ScrollToLinks().applyBehavior.call(domObject);
      var link = $('a', domObject)[0];
      var addedClickEvent = $._data(link, 'events').hasOwnProperty('click');
      expect(addedClickEvent).to.be.true;
    });
  });
});
