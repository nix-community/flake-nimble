{
  description = ''Code coverage library'';
  inputs.src-coverage-master.flake = false;
  inputs.src-coverage-master.type = "github";
  inputs.src-coverage-master.owner = "yglukhov";
  inputs.src-coverage-master.repo = "coverage";
  inputs.src-coverage-master.ref = "refs/heads/master";
  
  
  inputs."nake".url = "path:../../../n/nake";
  inputs."nake".type = "github";
  inputs."nake".owner = "riinr";
  inputs."nake".repo = "flake-nimble";
  inputs."nake".ref = "flake-pinning";
  inputs."nake".dir = "nimpkgs/n/nake";

  outputs = { self, nixpkgs, src-coverage-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-coverage-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-coverage-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}