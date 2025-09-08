derivation {
  system = builtins.currentSystem;
  name = "test";
  builder = "/bin/sh";
  args = [ ./builder.sh ];
}

# NOTE: Evaluates to:
# «derivation /nix/store/awj3b1mp24c801bxbk6gibiibhi8aqbj-test.drv»
# {
#   all      = [ «derivation /nix/store/awj3b1mp24c801bxbk6gibiibhi8aqbj-test.drv» ];
#   args     = [ /home/rin/repos/six/builder.sh ];
#   builder  = "/bin/sh";
#   drvAttrs = {
#     args    = [ /home/rin/repos/six/builder.sh ];
#     builder = "/bin/sh";
#     name    = "test";
#     system  = "x86_64-linux";
#   };
#   drvPath    = "/nix/store/awj3b1mp24c801bxbk6gibiibhi8aqbj-test.drv";
#   name       = "test";
#   out        = «derivation /nix/store/awj3b1mp24c801bxbk6gibiibhi8aqbj-test.drv»;
#   outPath    = "/nix/store/m61i9hnfmhbj6qdy99gvz81npw1rq4nh-test";
#   outputName = "out";
#   system     = "x86_64-linux";
#   type       = "derivation";
# }
