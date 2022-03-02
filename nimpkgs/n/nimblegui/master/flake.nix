{
  description = ''A simple GUI front for Nimble.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimblegui-master.flake = false;
  inputs.src-nimblegui-master.type = "github";
  inputs.src-nimblegui-master.owner = "ThomasTJdev";
  inputs.src-nimblegui-master.repo = "nim_nimble_gui";
  inputs.src-nimblegui-master.ref = "refs/heads/master";
  inputs.src-nimblegui-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."webgui".type = "github";
  # inputs."webgui".owner = "riinr";
  # inputs."webgui".repo = "flake-nimble";
  # inputs."webgui".ref = "flake-pinning";
  # inputs."webgui".dir = "nimpkgs/w/webgui";
  # inputs."webgui".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."webgui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimblegui-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimblegui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimblegui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}