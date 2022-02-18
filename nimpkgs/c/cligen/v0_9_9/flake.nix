{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cligen-v0_9_9.flake = false;
  inputs.src-cligen-v0_9_9.type = "github";
  inputs.src-cligen-v0_9_9.owner = "c-blake";
  inputs.src-cligen-v0_9_9.repo = "cligen";
  inputs.src-cligen-v0_9_9.ref = "refs/tags/v0.9.9";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v0_9_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v0_9_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}