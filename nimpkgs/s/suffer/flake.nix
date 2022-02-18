{
  description = ''a nim library for drawing 2d shapes, text, and images to 32bit software pixel buffers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."suffer-master".type = "github";
  inputs."suffer-master".owner = "riinr";
  inputs."suffer-master".repo = "flake-nimble";
  inputs."suffer-master".ref = "flake-pinning";
  inputs."suffer-master".dir = "nimpkgs/s/suffer/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}