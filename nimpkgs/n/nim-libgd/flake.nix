{
  description = ''Nim Wrapper for LibGD 2.x'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nim-libgd-master".type = "github";
  inputs."nim-libgd-master".owner = "riinr";
  inputs."nim-libgd-master".repo = "flake-nimble";
  inputs."nim-libgd-master".ref = "flake-pinning";
  inputs."nim-libgd-master".dir = "nimpkgs/n/nim-libgd/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}