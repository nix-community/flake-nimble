{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cligen-v0_9_22.flake = false;
  inputs.src-cligen-v0_9_22.type = "github";
  inputs.src-cligen-v0_9_22.owner = "c-blake";
  inputs.src-cligen-v0_9_22.repo = "cligen";
  inputs.src-cligen-v0_9_22.ref = "refs/tags/v0.9.22";
  inputs.src-cligen-v0_9_22.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v0_9_22, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_22;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v0_9_22"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}