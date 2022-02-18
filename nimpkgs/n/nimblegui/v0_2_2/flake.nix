{
  description = ''A simple GUI front for Nimble.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimblegui-v0_2_2.flake = false;
  inputs.src-nimblegui-v0_2_2.type = "github";
  inputs.src-nimblegui-v0_2_2.owner = "ThomasTJdev";
  inputs.src-nimblegui-v0_2_2.repo = "nim_nimble_gui";
  inputs.src-nimblegui-v0_2_2.ref = "refs/tags/v0.2.2";
  
  
  inputs."webgui".type = "github";
  inputs."webgui".owner = "riinr";
  inputs."webgui".repo = "flake-nimble";
  inputs."webgui".ref = "flake-pinning";
  inputs."webgui".dir = "nimpkgs/w/webgui";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimblegui-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimblegui-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimblegui-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}