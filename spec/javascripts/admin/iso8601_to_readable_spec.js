//= require spec_helper
//= require admin/iso8601_to_readable

describe('iso8601ToReadable#humanReadable', function () {
  it('should format date', function () {
    var classTarget = '.date.iso8601';
    var $root = $('#konacha');

    $root.append(domElement.isoDateDOM('2016-10-20T00:00:00Z'));
    iso8601ToReadable({ target: classTarget }).format('MMM Do YYYY');
    var adjustedDate = $(classTarget).text();
    expect(adjustedDate).to.eq('Date: Oct 19th 2016');
  });
});