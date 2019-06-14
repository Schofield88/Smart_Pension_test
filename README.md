# Smart Pension Junior test - Luke Phyall

## Objective

Write a Ruby command line script that processes and outputs a list sorted for both total and unique views from a log file.

## Setup

Clone the repository, then at the command line run:

```bundle install```

to install dependencies.

## Run

The app requires a valid file located in the project root; failing to pass a file as an argument or passing an invalid file name will cause the app to exit with an error message.  To run the app, in the root of the app folder at the command line type:

```ruby smartsort.rb webserver.log```

In this case, "webserver.log" is the log file of sample data supplied with the test.

## Design choices and assumptions

Broadly, there are three stages involved between the raw log file and a sorted output:

- Structuring the raw data in a useful way
- Processing that newly-structured data into the two lists (total views and unique views)
- Rendering the sorted lists in the terminal

As such, a class was written for each of these stages.

It was assumed that the app will always receive raw data structured in the manner of the sample provided; as such, the app initially destructures the data using a new line as a split delimiter, then further splits each string using the space. If the raw data were to vary in format, perhaps in the order each URL/IP address occurred, or that each line were to appear without a space separating the two, a better choice would have been to use regular expressions to ensure that the data was correctly extracted.

Thank you for your time considering this test.
