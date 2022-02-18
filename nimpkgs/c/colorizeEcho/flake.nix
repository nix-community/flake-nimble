{
  description = ''colorizeEcho is a package which colorize echo message on Windows command prompt.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."colorizeEcho-main".type = "github";
  inputs."colorizeEcho-main".owner = "riinr";
  inputs."colorizeEcho-main".repo = "flake-nimble";
  inputs."colorizeEcho-main".ref = "flake-pinning";
  inputs."colorizeEcho-main".dir = "nimpkgs/c/colorizeEcho/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}