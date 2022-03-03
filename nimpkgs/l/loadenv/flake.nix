{
  description = ''load .env variables'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."loadenv-master".type = "github";
  inputs."loadenv-master".owner = "riinr";
  inputs."loadenv-master".repo = "flake-nimble";
  inputs."loadenv-master".ref = "flake-pinning";
  inputs."loadenv-master".dir = "nimpkgs/l/loadenv/master";
  inputs."loadenv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loadenv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}