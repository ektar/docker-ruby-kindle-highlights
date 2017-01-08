from ruby:2.4

# Copy local copies of libraries
COPY ./lib /ruby-lib

# Install kindle highlight parser
RUN cd /ruby-lib/kindle-highlights && \
    gem build kindle_highlights.gemspec && \
    gem install kindle-highlights-1.0.1.gem 
