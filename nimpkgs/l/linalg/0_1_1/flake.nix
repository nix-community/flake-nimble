{
  description = ''Linear algebra for Nim'';
  inputs.src-linalg-0_1_1.flake = false;
  inputs.src-linalg-0_1_1.type = "github";
  inputs.src-linalg-0_1_1.owner = "andreaferretti";
  inputs.src-linalg-0_1_1.repo = "linear-algebra";
  inputs.src-linalg-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-linalg-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linalg-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-linalg-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}