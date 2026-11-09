FROM jekyll/jekyll:4

# Keep the container's gems and lockfile separate from a mounted checkout and
# from host-specific vendor/bundle installations.
WORKDIR /opt/jekyll
COPY Gemfile ./
RUN bundle install --jobs 2
ENV BUNDLE_GEMFILE=/opt/jekyll/Gemfile

WORKDIR /srv/jekyll
EXPOSE 4000
ENTRYPOINT ["bundle", "exec", "jekyll"]
CMD ["serve", "--host", "0.0.0.0"]
