{
  description = ''Netty is a reliable UDP connection for games.'';
  inputs.src-netty-0_2_0.flake = false;
  inputs.src-netty-0_2_0.type = "github";
  inputs.src-netty-0_2_0.owner = "treeform";
  inputs.src-netty-0_2_0.repo = "netty";
  inputs.src-netty-0_2_0.ref = "refs/tags/0.2.0";
  
  
  inputs."snappy".url = "path:../../../s/snappy";
  inputs."snappy".type = "github";
  inputs."snappy".owner = "riinr";
  inputs."snappy".repo = "flake-nimble";
  inputs."snappy".ref = "flake-pinning";
  inputs."snappy".dir = "nimpkgs/s/snappy";

  outputs = { self, nixpkgs, src-netty-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-netty-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-netty-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}