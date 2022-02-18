{
  description = ''daemonizer for Unix, Linux and OS X'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."daemonim-master".type = "github";
  inputs."daemonim-master".owner = "riinr";
  inputs."daemonim-master".repo = "flake-nimble";
  inputs."daemonim-master".ref = "flake-pinning";
  inputs."daemonim-master".dir = "nimpkgs/d/daemonim/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}