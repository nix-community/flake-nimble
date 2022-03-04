{
  description = ''A comprehensive toolkit for all your testing needs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-testutils-v0_4_2.flake = false;
  inputs.src-testutils-v0_4_2.type = "github";
  inputs.src-testutils-v0_4_2.owner = "status-im";
  inputs.src-testutils-v0_4_2.repo = "nim-testutils";
  inputs.src-testutils-v0_4_2.ref = "refs/tags/v0.4.2";
  inputs.src-testutils-v0_4_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."https://github.com/status-im/nim-unittest2.git".type = "github";
  inputs."https://github.com/status-im/nim-unittest2.git".owner = "riinr";
  inputs."https://github.com/status-im/nim-unittest2.git".repo = "flake-nimble";
  inputs."https://github.com/status-im/nim-unittest2.git".ref = "flake-pinning";
  inputs."https://github.com/status-im/nim-unittest2.git".dir = "nimpkgs/h/https://github.com/status-im/nim-unittest2.git";
  inputs."https://github.com/status-im/nim-unittest2.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/status-im/nim-unittest2.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-testutils-v0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-testutils-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-testutils-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}