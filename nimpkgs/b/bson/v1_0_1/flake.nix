{
  description = ''BSON Binary JSON Serialization'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bson-v1_0_1.flake = false;
  inputs.src-bson-v1_0_1.type = "github";
  inputs.src-bson-v1_0_1.owner = "JohnAD";
  inputs.src-bson-v1_0_1.repo = "bson";
  inputs.src-bson-v1_0_1.ref = "refs/tags/v1.0.1";
  inputs.src-bson-v1_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bson-v1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bson-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bson-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}