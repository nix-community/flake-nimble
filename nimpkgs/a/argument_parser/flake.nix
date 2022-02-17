{
  description = ''Provides a complex command-line parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."argument_parser-master".type = "github";
  inputs."argument_parser-master".owner = "riinr";
  inputs."argument_parser-master".repo = "flake-nimble";
  inputs."argument_parser-master".ref = "flake-pinning";
  inputs."argument_parser-master".dir = "nimpkgs/a/argument_parser/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}