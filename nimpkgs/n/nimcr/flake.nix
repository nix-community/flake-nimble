{
  description = ''A small program to make Nim shebang-able without the overhead of compiling each time'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimcr-master".type = "github";
  inputs."nimcr-master".owner = "riinr";
  inputs."nimcr-master".repo = "flake-nimble";
  inputs."nimcr-master".ref = "flake-pinning";
  inputs."nimcr-master".dir = "nimpkgs/n/nimcr/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}