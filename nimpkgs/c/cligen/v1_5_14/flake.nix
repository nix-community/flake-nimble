{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cligen-v1_5_14.flake = false;
  inputs.src-cligen-v1_5_14.type = "github";
  inputs.src-cligen-v1_5_14.owner = "c-blake";
  inputs.src-cligen-v1_5_14.repo = "cligen";
  inputs.src-cligen-v1_5_14.ref = "refs/tags/v1.5.14";
  inputs.src-cligen-v1_5_14.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v1_5_14, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_14;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v1_5_14"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}