{
  description = ''KWin JavaScript API wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."kwin-master".type = "github";
  inputs."kwin-master".owner = "riinr";
  inputs."kwin-master".repo = "flake-nimble";
  inputs."kwin-master".ref = "flake-pinning";
  inputs."kwin-master".dir = "nimpkgs/k/kwin/master";
  inputs."kwin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kwin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}