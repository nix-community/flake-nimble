{
  description = ''A Nim wrapper for ttmath: big numbers with fixed size'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."ttmath-master".type = "github";
  inputs."ttmath-master".owner = "riinr";
  inputs."ttmath-master".repo = "flake-nimble";
  inputs."ttmath-master".ref = "flake-pinning";
  inputs."ttmath-master".dir = "nimpkgs/t/ttmath/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}