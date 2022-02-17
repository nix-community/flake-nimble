{
  description = ''A simple GUI front for Nimble.'';
  inputs.src-nimblegui-v0_2_0.flake = false;
  inputs.src-nimblegui-v0_2_0.type = "github";
  inputs.src-nimblegui-v0_2_0.owner = "ThomasTJdev";
  inputs.src-nimblegui-v0_2_0.repo = "nim_nimble_gui";
  inputs.src-nimblegui-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."webgui".type = "github";
  inputs."webgui".owner = "riinr";
  inputs."webgui".repo = "flake-nimble";
  inputs."webgui".ref = "flake-pinning";
  inputs."webgui".dir = "nimpkgs/w/webgui";

  outputs = { self, nixpkgs, src-nimblegui-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimblegui-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimblegui-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}