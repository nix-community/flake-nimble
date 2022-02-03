{
  description = ''Polynomial operations'';
  inputs.src-polynumeric-master.flake = false;
  inputs.src-polynumeric-master.type = "github";
  inputs.src-polynumeric-master.owner = "SciNim";
  inputs.src-polynumeric-master.repo = "polynumeric";
  inputs.src-polynumeric-master.ref = "refs/heads/master";
  
  
  inputs."arraymancer".url = "path:../../../a/arraymancer";
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  outputs = { self, nixpkgs, src-polynumeric-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polynumeric-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-polynumeric-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}