{
  description = ''A comprehensive toolkit for all your testing needs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-testutils-0_4_1.flake = false;
  inputs.src-testutils-0_4_1.type = "github";
  inputs.src-testutils-0_4_1.owner = "status-im";
  inputs.src-testutils-0_4_1.repo = "nim-testutils";
  inputs.src-testutils-0_4_1.ref = "refs/tags/0.4.1";
  inputs.src-testutils-0_4_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/status-im/nim-unittest2.git".type = "github";
  # inputs."https://github.com/status-im/nim-unittest2.git".owner = "riinr";
  # inputs."https://github.com/status-im/nim-unittest2.git".repo = "flake-nimble";
  # inputs."https://github.com/status-im/nim-unittest2.git".ref = "flake-pinning";
  # inputs."https://github.com/status-im/nim-unittest2.git".dir = "nimpkgs/h/https://github.com/status-im/nim-unittest2.git";
  # inputs."https://github.com/status-im/nim-unittest2.git".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/status-im/nim-unittest2.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-testutils-0_4_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-testutils-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-testutils-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}