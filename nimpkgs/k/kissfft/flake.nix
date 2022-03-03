{
  description = ''Nim binding for KissFFT Fast Fourier Transform library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."kissfft-master".type = "github";
  inputs."kissfft-master".owner = "riinr";
  inputs."kissfft-master".repo = "flake-nimble";
  inputs."kissfft-master".ref = "flake-pinning";
  inputs."kissfft-master".dir = "nimpkgs/k/kissfft/master";
  inputs."kissfft-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kissfft-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}