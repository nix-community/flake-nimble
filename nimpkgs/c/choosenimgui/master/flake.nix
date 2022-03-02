{
  description = ''A simple GUI for choosenim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-choosenimgui-master.flake = false;
  inputs.src-choosenimgui-master.type = "github";
  inputs.src-choosenimgui-master.owner = "ThomasTJdev";
  inputs.src-choosenimgui-master.repo = "choosenim_gui";
  inputs.src-choosenimgui-master.ref = "refs/heads/master";
  inputs.src-choosenimgui-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."webgui".type = "github";
  # inputs."webgui".owner = "riinr";
  # inputs."webgui".repo = "flake-nimble";
  # inputs."webgui".ref = "flake-pinning";
  # inputs."webgui".dir = "nimpkgs/w/webgui";
  # inputs."webgui".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."webgui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-choosenimgui-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-choosenimgui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-choosenimgui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}