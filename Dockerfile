FROM bitnami/moodle:3

ARG username="appuser"
ARG unique_id=9125

RUN adduser --disabled-password \
            --gecos "" \
            --home "/nonexistent" \
            --shell "/sbin/nologin" \
            --no-create-home \
            --uid "${unique_id}" \
            "${username}"

ENV HOST="localhost" \
    BITNAMI_DEBUG=true \
    ALLOW_EMPTY_PASSWORD=no \
    MOODLE_DATABASE_HOST=mariadb \
    MOODLE_DATABASE_PORT_NUMBER=3306 \
    MOODLE_DATABASE_USER=bn_moodle \
    MOODLE_DATABASE_NAME=bitnami_moodle \
    MOODLE_DATABASE_PASSWORD=passwordmoodle \
    MOODLE_DATABASE_ROOT_PASSWORD=rootpassword \
    MOODLE_SITE_NAME="Moodle PKKWU" \
    MOODLE_USERNAME="admin_user_moodle" \
    MOODLE_PASSWORD="admin_password_moodle" \
    MOODLE_SKIP_BOOTSTRAP=no \
    MOODLE_DATABASE_TYPE=mariadb \
    MOODLE_HOST=${HOST}

USER root

RUN chown -R ${username}:${username} /bitnami/moodle && chown -R ${username}:${username} /bitnami/moodledata

VOLUME /bitnami/moodle
VOLUME /bitnami/moodledata

EXPOSE 8080 8443
USER root

CMD [ "/opt/bitnami/scripts/moodle/run.sh" ]
