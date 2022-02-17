{
  description = ''A numpy like ndarray and dataframe library for nim-lang.'';
  inputs.src-numnim-master.flake = false;
  inputs.src-numnim-master.type = "github";
  inputs.src-numnim-master.owner = "YesDrX";
  inputs.src-numnim-master.repo = "numnim";
  inputs.src-numnim-master.ref = "refs/heads/master";
  
  
  inputs."nimblas".type = "github";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".repo = "flake-nimble";
  inputs."nimblas".ref = "flake-pinning";
  inputs."nimblas".dir = "nimpkgs/n/nimblas";

  
  inputs."nimlapack".type = "github";
  inputs."nimlapack".owner = "riinr";
  inputs."nimlapack".repo = "flake-nimble";
  inputs."nimlapack".ref = "flake-pinning";
  inputs."nimlapack".dir = "nimpkgs/n/nimlapack";

  
  inputs."nimpy".type = "github";
  inputs."nimpy".owner = "riinr";
  inputs."nimpy".repo = "flake-nimble";
  inputs."nimpy".ref = "flake-pinning";
  inputs."nimpy".dir = "nimpkgs/n/nimpy";

  outputs = { self, nixpkgs, src-numnim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-numnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-numnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}