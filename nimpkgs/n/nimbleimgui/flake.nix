{
  description = ''ImGui Frontend for Nimble'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimbleimgui-master".type = "github";
  inputs."nimbleimgui-master".owner = "riinr";
  inputs."nimbleimgui-master".repo = "flake-nimble";
  inputs."nimbleimgui-master".ref = "flake-pinning";
  inputs."nimbleimgui-master".dir = "nimpkgs/n/nimbleimgui/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
