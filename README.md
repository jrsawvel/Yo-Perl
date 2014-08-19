# Yo-Perl

Perl module that provides access to the Yo API.

External links:

* [Yo](http://www.justyo.co)
* [API](https://medium.com/@YoAppStatus/yo-developers-api-e7f2f0ec5c3c)


## Example Usage

Create object by passing the Yo API token for the account sending the Yo.  
`my $yo = Yo->new("your-yo-api-token");`

Optionally, set link to point to a URL that gets sent with the Yo. The user receiving the Yo can swipe the Yo to the right on the phone and be shown the web page corresponding to the link.  
`$yo->set_link("http://optionalurltosomething");`

Send Yo to all subscribers.  
`$yo->all;`

Send a Yo to one subscriber.  
`$yo->user('USERNAME');`

Get subscriber count.  
`my $json = $yo->subscribers;`

The returned format from Yo equals `{"result": 23}` where 23 represents the number of subscribers to the Yo account corresponding to the Yo API token given above.


