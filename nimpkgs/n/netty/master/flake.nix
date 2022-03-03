{
  description = ''Netty is a reliable UDP connection for games.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-netty-master.flake = false;
  inputs.src-netty-master.type = "github";
  inputs.src-netty-master.owner = "treeform";
  inputs.src-netty-master.repo = "netty";
  inputs.src-netty-master.ref = "refs/heads/master";
  inputs.src-netty-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."flatty".type = "github";
  # inputs."flatty".owner = "riinr";
  # inputs."flatty".repo = "flake-nimble";
  # inputs."flatty".ref = "flake-pinning";
  # inputs."flatty".dir = "nimpkgs/f/flatty";
  # inputs."flatty".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."flatty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-netty-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-netty-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-netty-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}