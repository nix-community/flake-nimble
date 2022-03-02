{
  description = ''search algorithms'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nim_searches-master".type = "github";
  inputs."nim_searches-master".owner = "riinr";
  inputs."nim_searches-master".repo = "flake-nimble";
  inputs."nim_searches-master".ref = "flake-pinning";
  inputs."nim_searches-master".dir = "nimpkgs/n/nim_searches/master";
  inputs."nim_searches-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_searches-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}