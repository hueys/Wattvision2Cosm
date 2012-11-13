# Wattvision2Cosm #

This is a simple ruby script that makes use of the [Wattvision](http://www.wattvision.com) [API](http://www.wattvision.com/info/api) to fetch energy usage for a Wattvision account and upload the cost and usage information to [Cosm](http://cosm.com) using the [Cosm API](https://cosm.com/docs/).

## Environment Variables ##

You need to define some environment variables in order to use the Wattvision and Cosm APIs. You can get the values of these variables from your Wattvision and Cosm accounts.

* WATTVISION_API_KEY - API key value from Wattvision
* WATTVISION_HOUSE_ID - The ID of Wattvision house you're analyzing
* COSM_API_KEY - API key value from Cosm
* COSM_FEED_ID - The ID number of the feed to save datapoints to

## License ##

Copyright (c) 2012 Steven Huey <stevenhuey@stevenhuey.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.