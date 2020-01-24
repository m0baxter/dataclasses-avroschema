#!/bin/sh -e

set -o errexit

black . --check
flake8 .
isort -rc .

# mypy dataclasses_avroschema --ignore-missing-imports --no-strict-optional