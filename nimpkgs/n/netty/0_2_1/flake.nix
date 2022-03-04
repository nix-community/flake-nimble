{
  description = ''Netty is a reliable UDP connection for games.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-netty-0_2_1.flake = false;
  inputs.src-netty-0_2_1.type = "github";
  inputs.src-netty-0_2_1.owner = "treeform";
  inputs.src-netty-0_2_1.repo = "netty";
  inputs.src-netty-0_2_1.ref = "refs/tags/0.2.1";
  inputs.src-netty-0_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."flatty".type = "github";
  inputs."flatty".owner = "riinr";
  inputs."flatty".repo = "flake-nimble";
  inputs."flatty".ref = "flake-pinning";
  inputs."flatty".dir = "nimpkgs/f/flatty";
  inputs."flatty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-netty-0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-netty-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-netty-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}