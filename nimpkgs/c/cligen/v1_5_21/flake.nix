{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cligen-v1_5_21.flake = false;
  inputs.src-cligen-v1_5_21.type = "github";
  inputs.src-cligen-v1_5_21.owner = "c-blake";
  inputs.src-cligen-v1_5_21.repo = "cligen";
  inputs.src-cligen-v1_5_21.ref = "refs/tags/v1.5.21";
  inputs.src-cligen-v1_5_21.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v1_5_21, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_21;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v1_5_21"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}