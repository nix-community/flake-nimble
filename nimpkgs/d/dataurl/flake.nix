{
  description = ''Easily create data urls! CLI included'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."dataUrl-master".type = "github";
  inputs."dataUrl-master".owner = "riinr";
  inputs."dataUrl-master".repo = "flake-nimble";
  inputs."dataUrl-master".ref = "flake-pinning";
  inputs."dataUrl-master".dir = "nimpkgs/d/dataUrl/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}