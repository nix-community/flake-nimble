{
  description = ''Mathematical numerical named static constants useful for different disciplines'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."constants-master".type = "github";
  inputs."constants-master".owner = "riinr";
  inputs."constants-master".repo = "flake-nimble";
  inputs."constants-master".ref = "flake-pinning";
  inputs."constants-master".dir = "nimpkgs/c/constants/master";
  inputs."constants-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."constants-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}