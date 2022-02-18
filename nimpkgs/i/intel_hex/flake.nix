{
  description = ''Intel hex file utility library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."intel_hex-master".type = "github";
  inputs."intel_hex-master".owner = "riinr";
  inputs."intel_hex-master".repo = "flake-nimble";
  inputs."intel_hex-master".ref = "flake-pinning";
  inputs."intel_hex-master".dir = "nimpkgs/i/intel_hex/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}