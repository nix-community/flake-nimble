{
  description = ''BSON Binary JSON Serialization'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bson-v1_1_2.flake = false;
  inputs.src-bson-v1_1_2.type = "github";
  inputs.src-bson-v1_1_2.owner = "JohnAD";
  inputs.src-bson-v1_1_2.repo = "bson";
  inputs.src-bson-v1_1_2.ref = "refs/tags/v1.1.2";
  inputs.src-bson-v1_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bson-v1_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bson-v1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bson-v1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}