{
  description = ''A simple GUI for choosenim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-choosenimgui-v0_1_0.flake = false;
  inputs.src-choosenimgui-v0_1_0.type = "github";
  inputs.src-choosenimgui-v0_1_0.owner = "ThomasTJdev";
  inputs.src-choosenimgui-v0_1_0.repo = "choosenim_gui";
  inputs.src-choosenimgui-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-choosenimgui-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."webgui".type = "github";
  # inputs."webgui".owner = "riinr";
  # inputs."webgui".repo = "flake-nimble";
  # inputs."webgui".ref = "flake-pinning";
  # inputs."webgui".dir = "nimpkgs/w/webgui";
  # inputs."webgui".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."webgui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-choosenimgui-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-choosenimgui-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-choosenimgui-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}