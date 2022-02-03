{
  description = ''This package tries to provide a lot of the most useful data structures and alogrithms need in the different subfield of bio informatics'';
  inputs.src-bionim-v0_0_1.flake = false;
  inputs.src-bionim-v0_0_1.type = "github";
  inputs.src-bionim-v0_0_1.owner = "Unaimend";
  inputs.src-bionim-v0_0_1.repo = "bionim";
  inputs.src-bionim-v0_0_1.ref = "refs/tags/v0.0.1";
  
  outputs = { self, nixpkgs, src-bionim-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bionim-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bionim-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}