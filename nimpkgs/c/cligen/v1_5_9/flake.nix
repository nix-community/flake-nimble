{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cligen-v1_5_9.flake = false;
  inputs.src-cligen-v1_5_9.type = "github";
  inputs.src-cligen-v1_5_9.owner = "c-blake";
  inputs.src-cligen-v1_5_9.repo = "cligen";
  inputs.src-cligen-v1_5_9.ref = "refs/tags/v1.5.9";
  inputs.src-cligen-v1_5_9.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v1_5_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v1_5_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}