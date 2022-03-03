{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cligen-v1_3_2.flake = false;
  inputs.src-cligen-v1_3_2.type = "github";
  inputs.src-cligen-v1_3_2.owner = "c-blake";
  inputs.src-cligen-v1_3_2.repo = "cligen";
  inputs.src-cligen-v1_3_2.ref = "refs/tags/v1.3.2";
  inputs.src-cligen-v1_3_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v1_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v1_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}