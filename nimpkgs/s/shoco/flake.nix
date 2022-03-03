{
  description = ''A fast compressor for short strings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."shoco-master".type = "github";
  inputs."shoco-master".owner = "riinr";
  inputs."shoco-master".repo = "flake-nimble";
  inputs."shoco-master".ref = "flake-pinning";
  inputs."shoco-master".dir = "nimpkgs/s/shoco/master";
  inputs."shoco-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shoco-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}