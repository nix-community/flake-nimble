{
  description = ''A Rustbox-inspired termbox wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimbox-master".type = "github";
  inputs."nimbox-master".owner = "riinr";
  inputs."nimbox-master".repo = "flake-nimble";
  inputs."nimbox-master".ref = "flake-pinning";
  inputs."nimbox-master".dir = "nimpkgs/n/nimbox/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}