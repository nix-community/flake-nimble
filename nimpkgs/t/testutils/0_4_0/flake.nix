{
  description = ''A comprehensive toolkit for all your testing needs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-testutils-0_4_0.flake = false;
  inputs.src-testutils-0_4_0.type = "github";
  inputs.src-testutils-0_4_0.owner = "status-im";
  inputs.src-testutils-0_4_0.repo = "nim-testutils";
  inputs.src-testutils-0_4_0.ref = "refs/tags/0.4.0";
  
  
  inputs."https://github.com/status-im/nim-unittest2.git".type = "github";
  inputs."https://github.com/status-im/nim-unittest2.git".owner = "riinr";
  inputs."https://github.com/status-im/nim-unittest2.git".repo = "flake-nimble";
  inputs."https://github.com/status-im/nim-unittest2.git".ref = "flake-pinning";
  inputs."https://github.com/status-im/nim-unittest2.git".dir = "nimpkgs/h/https://github.com/status-im/nim-unittest2.git";

  outputs = { self, nixpkgs, flakeNimbleLib, src-testutils-0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-testutils-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-testutils-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}