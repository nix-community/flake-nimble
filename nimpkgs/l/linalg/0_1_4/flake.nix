{
  description = ''Linear algebra for Nim'';
  inputs.src-linalg-0_1_4.flake = false;
  inputs.src-linalg-0_1_4.type = "github";
  inputs.src-linalg-0_1_4.owner = "andreaferretti";
  inputs.src-linalg-0_1_4.repo = "linear-algebra";
  inputs.src-linalg-0_1_4.ref = "refs/tags/0.1.4";
  
  outputs = { self, nixpkgs, src-linalg-0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linalg-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-linalg-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}