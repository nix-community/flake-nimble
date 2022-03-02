{
  description = ''an interface macro'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."protocoled-master".type = "github";
  inputs."protocoled-master".owner = "riinr";
  inputs."protocoled-master".repo = "flake-nimble";
  inputs."protocoled-master".ref = "flake-pinning";
  inputs."protocoled-master".dir = "nimpkgs/p/protocoled/master";
  inputs."protocoled-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."protocoled-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}