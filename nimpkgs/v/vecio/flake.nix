{
  description = ''vectored io for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."vecio-master".type = "github";
  inputs."vecio-master".owner = "riinr";
  inputs."vecio-master".repo = "flake-nimble";
  inputs."vecio-master".ref = "flake-pinning";
  inputs."vecio-master".dir = "nimpkgs/v/vecio/master";
  inputs."vecio-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vecio-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}