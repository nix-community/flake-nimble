{
  description = ''Linear algebra for Nim'';
  inputs.src-linalg-0_1_5.flake = false;
  inputs.src-linalg-0_1_5.type = "github";
  inputs.src-linalg-0_1_5.owner = "andreaferretti";
  inputs.src-linalg-0_1_5.repo = "linear-algebra";
  inputs.src-linalg-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-linalg-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linalg-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-linalg-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}