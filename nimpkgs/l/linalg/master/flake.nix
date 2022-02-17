{
  description = ''Linear algebra for Nim'';
  inputs.src-linalg-master.flake = false;
  inputs.src-linalg-master.type = "github";
  inputs.src-linalg-master.owner = "andreaferretti";
  inputs.src-linalg-master.repo = "linear-algebra";
  inputs.src-linalg-master.ref = "refs/heads/master";
  
  
  inputs."nimblas".type = "github";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".repo = "flake-nimble";
  inputs."nimblas".ref = "flake-pinning";
  inputs."nimblas".dir = "nimpkgs/n/nimblas";

  outputs = { self, nixpkgs, src-linalg-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linalg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-linalg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}