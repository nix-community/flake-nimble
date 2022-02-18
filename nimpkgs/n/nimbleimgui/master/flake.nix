{
  description = ''ImGui Frontend for Nimble'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimbleimgui-master.flake = false;
  inputs.src-nimbleimgui-master.type = "github";
  inputs.src-nimbleimgui-master.owner = "qb-0";
  inputs.src-nimbleimgui-master.repo = "NimbleImGui";
  inputs.src-nimbleimgui-master.ref = "refs/heads/master";
  
  
  inputs."nimgl".type = "github";
  inputs."nimgl".owner = "riinr";
  inputs."nimgl".repo = "flake-nimble";
  inputs."nimgl".ref = "flake-pinning";
  inputs."nimgl".dir = "nimpkgs/n/nimgl";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbleimgui-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbleimgui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbleimgui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}