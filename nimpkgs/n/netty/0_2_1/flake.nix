{
  description = ''Netty is a reliable UDP connection for games.'';
  inputs.src-netty-0_2_1.flake = false;
  inputs.src-netty-0_2_1.type = "github";
  inputs.src-netty-0_2_1.owner = "treeform";
  inputs.src-netty-0_2_1.repo = "netty";
  inputs.src-netty-0_2_1.ref = "refs/tags/0.2.1";
  
  
  inputs."flatty".url = "path:../../../f/flatty";
  inputs."flatty".type = "github";
  inputs."flatty".owner = "riinr";
  inputs."flatty".repo = "flake-nimble";
  inputs."flatty".ref = "flake-pinning";
  inputs."flatty".dir = "nimpkgs/f/flatty";

  outputs = { self, nixpkgs, src-netty-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-netty-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-netty-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}