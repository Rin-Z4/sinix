derivation {
  system = builtins.currentSystem;
  name = "test-with-dep";
  builder = "/bin/sh";
  args = [ ./builder.sh ];
  small = import ./small.nix;
}

# NOTE: Evaluates to:
# «derivation /nix/store/fvp9d4ykkm2qvms0b3l04cph7zzcv2nc-test-with-dep.drv»:
# {
#   all      = [ «derivation /nix/store/fvp9d4ykkm2qvms0b3l04cph7zzcv2nc-test-with-dep.drv» ];
#   args     = [ /home/rin/repos/six/builder.sh ];
#   builder  = "/bin/sh";
#   drvAttrs = {
#     args    = [ /home/rin/repos/six/builder.sh ];
#     builder = "/bin/sh";
#     name    = "test-with-dep";
#     small   = «derivation /nix/store/awj3b1mp24c801bxbk6gibiibhi8aqbj-test.drv»;
#     system  = "x86_64-linux";
#   };
#   drvPath    = "/nix/store/fvp9d4ykkm2qvms0b3l04cph7zzcv2nc-test-with-dep.drv";
#   name       = "test-with-dep";
#   out        = «derivation /nix/store/fvp9d4ykkm2qvms0b3l04cph7zzcv2nc-test-with-dep.drv»;
#   outPath    = "/nix/store/mj1mfcf3c4aw76xrvqrb1vi20mrxbvqb-test-with-dep";
#   outputName = "out";
#   small      = «derivation /nix/store/awj3b1mp24c801bxbk6gibiibhi8aqbj-test.drv»;
#   system     = "x86_64-linux";
#   type       = "derivation";
# }
