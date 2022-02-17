{
  description = ''Bass wrapper for Nim'';
  inputs.src-nimbass-master.flake = false;
  inputs.src-nimbass-master.type = "github";
  inputs.src-nimbass-master.owner = "genotrance";
  inputs.src-nimbass-master.repo = "nimbass";
  inputs.src-nimbass-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-nimbass-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbass-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbass-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}