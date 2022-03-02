{
  description = ''fastText porting in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fasttext-master".type = "github";
  inputs."fasttext-master".owner = "riinr";
  inputs."fasttext-master".repo = "flake-nimble";
  inputs."fasttext-master".ref = "flake-pinning";
  inputs."fasttext-master".dir = "nimpkgs/f/fasttext/master";
  inputs."fasttext-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fasttext-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}