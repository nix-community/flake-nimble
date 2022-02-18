{
  description = ''A brainfuck interpreter and compiler'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."brainfuck-master".type = "github";
  inputs."brainfuck-master".owner = "riinr";
  inputs."brainfuck-master".repo = "flake-nimble";
  inputs."brainfuck-master".ref = "flake-pinning";
  inputs."brainfuck-master".dir = "nimpkgs/b/brainfuck/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}