{
  description = ''A brainfuck interpreter and compiler'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-brainfuck-master.flake = false;
  inputs.src-brainfuck-master.type = "github";
  inputs.src-brainfuck-master.owner = "def-";
  inputs.src-brainfuck-master.repo = "nim-brainfuck";
  inputs.src-brainfuck-master.ref = "refs/heads/master";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, flakeNimbleLib, src-brainfuck-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-brainfuck-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-brainfuck-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}