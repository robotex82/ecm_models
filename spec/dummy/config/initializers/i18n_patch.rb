#module Formtastic
#    module I18n
#    class << self
#      def translate(*args)
#        key = args.shift.to_sym
#        key = ::I18n::Backend::Transformers.remove_locale_suffix_from_key(key)

#        options = args.extract_options!
#        options.reverse_merge!(:default => DEFAULT_VALUES[key])
#        options[:scope] = [DEFAULT_SCOPE, options[:scope]].flatten.compact

#        options[:default].map!{ |value| value = ::I18n::Backend::Transformers.remove_locale_suffix_from_key(value) } if options[:default].respond_to?(:map!)
#p "========== BEGIN"
#p key
#p options[:default]
#p "========== END"
#        return ::I18n.translate(key, *(args << options))
#        # return ::Polyglotism::I18nBackend.new.translate(key, *(args << options))
#      end
#      alias :t :translate
#    end
#  end
#end

#module I18n::Backend::Transformers
#  def self.remove_locale_suffix_from_key(key)
#    return key if key == "" or key.nil?
#    key = key.to_s.gsub(/_(#{::I18n.available_locales.join('|')})$/, '')
#    return key.to_sym
#  end
#end

##module Formtastic
##  # @private
##  module I18n
##    SCOPES = [
##        'activerecord.attributes.%{nested_model}.%{attribute}',
##        '%{model}.%{nested_model}.%{action}.%{attribute}',
##        '%{model}.%{nested_model}.%{attribute}',
##        '%{nested_model}.%{action}.%{attribute}',
##        '%{nested_model}.%{attribute}',
##        '%{model}.%{action}.%{attribute}',
##        '%{model}.%{attribute}',
##        '%{attribute}'
##      ]

##    class << self
##      def translate(*args)
##        key = args.shift.to_sym
##        key = ::I18n::Backend::Transformers.remove_locale_suffix_from_key(key)
##
##        options = args.extract_options!
##        options.reverse_merge!(:default => DEFAULT_VALUES[key])
##        options[:scope] = [DEFAULT_SCOPE, options[:scope]].flatten.compact
##p key
##        options[:default].map!{ |value| value = ::I18n::Backend::Transformers.remove_locale_suffix_from_key(value) } if options[:default].respond_to?(:map!)
##p *(args << options)
##        tk = ::I18n.translate(key, *(args << options))
##p "tk begin"
##p tk
##p "tk end begin"
##        return tk
##      end
##      alias :t :translate
##    end
##  end
##end

##module I18n::Backend::Transformers
##  def translate(*args)
##    updated_args = remove_locale_suffix(args)
##    output = super(*updated_args)
##    return output
##  end

##  def remove_locale_suffix(args)
##    args[1] = args[1].to_s.gsub(/_(#{::I18n.available_locales.join('|')})$/, '')
##    return args
##  end
##
##  def self.remove_locale_suffix_from_key(key)
##    return key if key == "" or key.nil?
##    key = key.to_s.gsub(/_(#{::I18n.available_locales.join('|')})$/, '')
##    return key.to_sym
##  end
##end

##I18n::Backend::Simple.send(:include, I18n::Backend::Transformers)

