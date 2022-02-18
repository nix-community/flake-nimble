{
  description = ''A wrapper for NCurses'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."ncurses-master".type = "github";
  inputs."ncurses-master".owner = "riinr";
  inputs."ncurses-master".repo = "flake-nimble";
  inputs."ncurses-master".ref = "flake-pinning";
  inputs."ncurses-master".dir = "nimpkgs/n/ncurses/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}