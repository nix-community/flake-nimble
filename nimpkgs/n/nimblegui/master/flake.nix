{
  description = ''A simple GUI front for Nimble.'';
  inputs.src-nimblegui-master.flake = false;
  inputs.src-nimblegui-master.type = "github";
  inputs.src-nimblegui-master.owner = "ThomasTJdev";
  inputs.src-nimblegui-master.repo = "nim_nimble_gui";
  inputs.src-nimblegui-master.ref = "refs/heads/master";
  
  
  inputs."webgui".type = "github";
  inputs."webgui".owner = "riinr";
  inputs."webgui".repo = "flake-nimble";
  inputs."webgui".ref = "flake-pinning";
  inputs."webgui".dir = "nimpkgs/w/webgui";

  outputs = { self, nixpkgs, src-nimblegui-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimblegui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimblegui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}