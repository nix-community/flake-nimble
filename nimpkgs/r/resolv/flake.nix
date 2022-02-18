{
  description = ''DNS resolution nimble making use of the native glibc resolv library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."resolv-master".type = "github";
  inputs."resolv-master".owner = "riinr";
  inputs."resolv-master".repo = "flake-nimble";
  inputs."resolv-master".ref = "flake-pinning";
  inputs."resolv-master".dir = "nimpkgs/r/resolv/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}