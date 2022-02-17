{
  description = ''fast markdown parser'';
  inputs.src-nmark-master.flake = false;
  inputs.src-nmark-master.type = "github";
  inputs.src-nmark-master.owner = "kyoheiu";
  inputs.src-nmark-master.repo = "nmark";
  inputs.src-nmark-master.ref = "refs/heads/master";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-nmark-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nmark-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nmark-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}