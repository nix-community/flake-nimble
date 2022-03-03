{
  description = ''Nim wrapper around the git version control software'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gitapi-master".type = "github";
  inputs."gitapi-master".owner = "riinr";
  inputs."gitapi-master".repo = "flake-nimble";
  inputs."gitapi-master".ref = "flake-pinning";
  inputs."gitapi-master".dir = "nimpkgs/g/gitapi/master";
  inputs."gitapi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gitapi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}