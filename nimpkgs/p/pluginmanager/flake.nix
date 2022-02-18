{
  description = ''Simple plugin implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."pluginmanager-master".type = "github";
  inputs."pluginmanager-master".owner = "riinr";
  inputs."pluginmanager-master".repo = "flake-nimble";
  inputs."pluginmanager-master".ref = "flake-pinning";
  inputs."pluginmanager-master".dir = "nimpkgs/p/pluginmanager/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}