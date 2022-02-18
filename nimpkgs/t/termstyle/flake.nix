{
  description = ''Easy to use styles for terminal output'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."termstyle-master".type = "github";
  inputs."termstyle-master".owner = "riinr";
  inputs."termstyle-master".repo = "flake-nimble";
  inputs."termstyle-master".ref = "flake-pinning";
  inputs."termstyle-master".dir = "nimpkgs/t/termstyle/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}