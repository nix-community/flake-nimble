{
  description = ''Netty is a reliable UDP connection for games.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-netty-0_2_0.flake = false;
  inputs.src-netty-0_2_0.type = "github";
  inputs.src-netty-0_2_0.owner = "treeform";
  inputs.src-netty-0_2_0.repo = "netty";
  inputs.src-netty-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-netty-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."snappy".type = "github";
  # inputs."snappy".owner = "riinr";
  # inputs."snappy".repo = "flake-nimble";
  # inputs."snappy".ref = "flake-pinning";
  # inputs."snappy".dir = "nimpkgs/s/snappy";
  # inputs."snappy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."snappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-netty-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-netty-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-netty-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}