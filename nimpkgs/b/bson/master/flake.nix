{
  description = ''BSON Binary JSON Serialization'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-bson-master.flake = false;
  inputs.src-bson-master.type = "github";
  inputs.src-bson-master.owner = "JohnAD";
  inputs.src-bson-master.repo = "bson";
  inputs.src-bson-master.ref = "refs/heads/master";
  inputs.src-bson-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bson-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bson-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bson-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}