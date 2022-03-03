{
  description = ''Convert numbers to words'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."numtoword-master".type = "github";
  inputs."numtoword-master".owner = "riinr";
  inputs."numtoword-master".repo = "flake-nimble";
  inputs."numtoword-master".ref = "flake-pinning";
  inputs."numtoword-master".dir = "nimpkgs/n/numtoword/master";
  inputs."numtoword-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numtoword-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}