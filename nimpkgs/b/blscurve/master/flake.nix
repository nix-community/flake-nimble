{
  description = ''Nim implementation of  Barreto-Lynn-Scott (BLS) curve BLS12-381.'';
  inputs.src-blscurve-master.flake = false;
  inputs.src-blscurve-master.type = "github";
  inputs.src-blscurve-master.owner = "status-im";
  inputs.src-blscurve-master.repo = "nim-blscurve";
  inputs.src-blscurve-master.ref = "refs/heads/master";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  
  inputs."https://github.com/status-im/nim-taskpools.git".type = "github";
  inputs."https://github.com/status-im/nim-taskpools.git".owner = "riinr";
  inputs."https://github.com/status-im/nim-taskpools.git".repo = "flake-nimble";
  inputs."https://github.com/status-im/nim-taskpools.git".ref = "flake-pinning";
  inputs."https://github.com/status-im/nim-taskpools.git".dir = "nimpkgs/h/https://github.com/status-im/nim-taskpools.git";

  outputs = { self, nixpkgs, src-blscurve-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-blscurve-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-blscurve-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}