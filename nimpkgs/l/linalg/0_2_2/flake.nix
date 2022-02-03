{
  description = ''Linear algebra for Nim'';
  inputs.src-linalg-0_2_2.flake = false;
  inputs.src-linalg-0_2_2.type = "github";
  inputs.src-linalg-0_2_2.owner = "andreaferretti";
  inputs.src-linalg-0_2_2.repo = "linear-algebra";
  inputs.src-linalg-0_2_2.ref = "refs/tags/0.2.2";
  
  outputs = { self, nixpkgs, src-linalg-0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linalg-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-linalg-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}