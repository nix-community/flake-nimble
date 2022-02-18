{
  description = ''Block copy of any text in HTML'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."htmlAntiCopy-master".type = "github";
  inputs."htmlAntiCopy-master".owner = "riinr";
  inputs."htmlAntiCopy-master".repo = "flake-nimble";
  inputs."htmlAntiCopy-master".ref = "flake-pinning";
  inputs."htmlAntiCopy-master".dir = "nimpkgs/h/htmlAntiCopy/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}