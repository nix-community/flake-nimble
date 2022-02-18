{
  description = ''APIs available in the latests version of Nim, backported to older stable releases'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."std_shims-master".type = "github";
  inputs."std_shims-master".owner = "riinr";
  inputs."std_shims-master".repo = "flake-nimble";
  inputs."std_shims-master".ref = "flake-pinning";
  inputs."std_shims-master".dir = "nimpkgs/s/std_shims/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}