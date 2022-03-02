{
  description = ''A comprehensive toolkit for all your testing needs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-testutils-master.flake = false;
  inputs.src-testutils-master.type = "github";
  inputs.src-testutils-master.owner = "status-im";
  inputs.src-testutils-master.repo = "nim-testutils";
  inputs.src-testutils-master.ref = "refs/heads/master";
  inputs.src-testutils-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/status-im/nim-unittest2.git".type = "github";
  # inputs."https://github.com/status-im/nim-unittest2.git".owner = "riinr";
  # inputs."https://github.com/status-im/nim-unittest2.git".repo = "flake-nimble";
  # inputs."https://github.com/status-im/nim-unittest2.git".ref = "flake-pinning";
  # inputs."https://github.com/status-im/nim-unittest2.git".dir = "nimpkgs/h/https://github.com/status-im/nim-unittest2.git";
  # inputs."https://github.com/status-im/nim-unittest2.git".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/status-im/nim-unittest2.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-testutils-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-testutils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-testutils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}