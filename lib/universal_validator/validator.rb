# encoding: utf-8

# Copyright (C) 2015 Szymon Kopciewski
#
# This file is part of UniversalValidator.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

module UniversalValidator
  class Validator
    def initialize
      yield self if block_given?
    end

    def errors?
      errors.count > 0
    end

    def errors
      @errors ||= {}
    end

    def add_error_for(field, msg)
      errors[field] ||= []
      errors[field] << msg
    end

    def errors_for(field)
      errors[field]
    end
  end
end
