{
  description = ''Nim implementation of  Barreto-Lynn-Scott (BLS) curve BLS12-381.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-blscurve-master.flake = false;
  inputs.src-blscurve-master.type = "github";
  inputs.src-blscurve-master.owner = "status-im";
  inputs.src-blscurve-master.repo = "nim-blscurve";
  inputs.src-blscurve-master.ref = "refs/heads/master";
  inputs.src-blscurve-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/status-im/nim-taskpools.git".type = "github";
  inputs."https://github.com/status-im/nim-taskpools.git".owner = "riinr";
  inputs."https://github.com/status-im/nim-taskpools.git".repo = "flake-nimble";
  inputs."https://github.com/status-im/nim-taskpools.git".ref = "flake-pinning";
  inputs."https://github.com/status-im/nim-taskpools.git".dir = "nimpkgs/h/https://github.com/status-im/nim-taskpools.git";
  inputs."https://github.com/status-im/nim-taskpools.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/status-im/nim-taskpools.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-blscurve-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-blscurve-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-blscurve-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}