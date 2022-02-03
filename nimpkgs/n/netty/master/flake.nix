{
  description = ''Netty is a reliable UDP connection for games.'';
  inputs.src-netty-master.flake = false;
  inputs.src-netty-master.type = "github";
  inputs.src-netty-master.owner = "treeform";
  inputs.src-netty-master.repo = "netty";
  inputs.src-netty-master.ref = "refs/heads/master";
  
  
  inputs."flatty".url = "path:../../../f/flatty";
  inputs."flatty".type = "github";
  inputs."flatty".owner = "riinr";
  inputs."flatty".repo = "flake-nimble";
  inputs."flatty".ref = "flake-pinning";
  inputs."flatty".dir = "nimpkgs/f/flatty";

  outputs = { self, nixpkgs, src-netty-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-netty-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-netty-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}