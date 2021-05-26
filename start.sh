#! /bin/sh

# Dockerfileで普通はif分岐しないのでシェルスクリプトで対応
if [ "${RAILS_ENV}" = "production"]
then
    bundle exec rails assets:precompile
fi

# PORTの値が無ければ3000を代入する
bundle exec rails s -p ${PORT:-3000} -b 0.0.0.0