{
  description = ''A mod manager for TF2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."tf2plug-master".type = "github";
  inputs."tf2plug-master".owner = "riinr";
  inputs."tf2plug-master".repo = "flake-nimble";
  inputs."tf2plug-master".ref = "flake-pinning";
  inputs."tf2plug-master".dir = "nimpkgs/t/tf2plug/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}