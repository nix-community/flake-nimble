{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cligen-v1_5_16.flake = false;
  inputs.src-cligen-v1_5_16.type = "github";
  inputs.src-cligen-v1_5_16.owner = "c-blake";
  inputs.src-cligen-v1_5_16.repo = "cligen";
  inputs.src-cligen-v1_5_16.ref = "refs/tags/v1.5.16";
  inputs.src-cligen-v1_5_16.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v1_5_16, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_16;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v1_5_16"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}