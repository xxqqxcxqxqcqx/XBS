# Add correct load path
$LOAD_PATH << __dir__

require 'Utilities.rb'
require 'Project.rb'

module XBS

# Public keys for paths and type hashes
def self.variant;     :variant     end
def self.action;      :action      end
def self.sourceroot;  :srcroot     end
def self.destroot;    :dstroot     end
def self.objectroot;  :objroot     end

# Special Targets
def self.clean;       :clean       end
def self.all;         :all         end

# Actions
def self.install;     :install     end
def self.build;       :build       end
def self.clean;       :clean       end

# Variants
def self.development; :development end
def self.release;     :release     end
def self.debug;       :debug       end

# Private arguments. These
# are parsed from build_args
# in the BuildSystem's
# initialize method.
def self.private_args
    return [:verbose, :buildx, :tooldir]
end

class BuildSystem
    def self.version
        return 0.1
    end

    # string, hash, array, array
    def initialize name, args, target, build_args
        @program    = name
        @xbs_args   = args
        @target     = target
        @build_args = build_args

        @projects = nil
        @groups = nil
    end

    def start
        puts 'Building ' + @target.to_s + ' with configuration ' + @xbs_args[XBS::variant].to_s

        if @xbs_args[XBS::variant] == XBS::development
            puts @xbs_args.to_s
        end
    end
end

end
