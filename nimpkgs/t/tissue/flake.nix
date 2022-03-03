{
  description = ''Test failing snippets from Nim's issues'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tissue-master".type = "github";
  inputs."tissue-master".owner = "riinr";
  inputs."tissue-master".repo = "flake-nimble";
  inputs."tissue-master".ref = "flake-pinning";
  inputs."tissue-master".dir = "nimpkgs/t/tissue/master";
  inputs."tissue-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tissue-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}