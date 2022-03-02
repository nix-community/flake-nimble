{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cligen-v0_9_33.flake = false;
  inputs.src-cligen-v0_9_33.type = "github";
  inputs.src-cligen-v0_9_33.owner = "c-blake";
  inputs.src-cligen-v0_9_33.repo = "cligen";
  inputs.src-cligen-v0_9_33.ref = "refs/tags/v0.9.33";
  inputs.src-cligen-v0_9_33.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v0_9_33, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_33;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v0_9_33"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}