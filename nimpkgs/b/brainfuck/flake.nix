{
  description = ''A brainfuck interpreter and compiler'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."brainfuck-master".type = "github";
  inputs."brainfuck-master".owner = "riinr";
  inputs."brainfuck-master".repo = "flake-nimble";
  inputs."brainfuck-master".ref = "flake-pinning";
  inputs."brainfuck-master".dir = "nimpkgs/b/brainfuck/master";
  inputs."brainfuck-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."brainfuck-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}