{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cligen-v0_9_32.flake = false;
  inputs.src-cligen-v0_9_32.type = "github";
  inputs.src-cligen-v0_9_32.owner = "c-blake";
  inputs.src-cligen-v0_9_32.repo = "cligen";
  inputs.src-cligen-v0_9_32.ref = "refs/tags/v0.9.32";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v0_9_32, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_32;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v0_9_32"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}