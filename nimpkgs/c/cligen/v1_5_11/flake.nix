{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cligen-v1_5_11.flake = false;
  inputs.src-cligen-v1_5_11.type = "github";
  inputs.src-cligen-v1_5_11.owner = "c-blake";
  inputs.src-cligen-v1_5_11.repo = "cligen";
  inputs.src-cligen-v1_5_11.ref = "refs/tags/v1.5.11";
  inputs.src-cligen-v1_5_11.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v1_5_11, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v1_5_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}