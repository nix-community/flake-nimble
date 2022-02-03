{
  description = ''A simple GUI for choosenim.'';
  inputs.src-choosenimgui-v0_1_0.flake = false;
  inputs.src-choosenimgui-v0_1_0.type = "github";
  inputs.src-choosenimgui-v0_1_0.owner = "ThomasTJdev";
  inputs.src-choosenimgui-v0_1_0.repo = "choosenim_gui";
  inputs.src-choosenimgui-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."webgui".url = "path:../../../w/webgui";
  inputs."webgui".type = "github";
  inputs."webgui".owner = "riinr";
  inputs."webgui".repo = "flake-nimble";
  inputs."webgui".ref = "flake-pinning";
  inputs."webgui".dir = "nimpkgs/w/webgui";

  outputs = { self, nixpkgs, src-choosenimgui-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-choosenimgui-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-choosenimgui-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}