{
  description = ''Nim Julia bridge'';
  inputs.src-nimjl-master.flake = false;
  inputs.src-nimjl-master.type = "github";
  inputs.src-nimjl-master.owner = "Clonkk";
  inputs.src-nimjl-master.repo = "nimjl";
  inputs.src-nimjl-master.ref = "refs/heads/master";
  
  
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  outputs = { self, nixpkgs, src-nimjl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimjl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimjl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}