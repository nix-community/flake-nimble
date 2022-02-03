{
  description = ''Nim math library for sequences and nested sequences (extends math library)'';
  inputs.src-seqmath-0_1_2.flake = false;
  inputs.src-seqmath-0_1_2.type = "github";
  inputs.src-seqmath-0_1_2.owner = "jlp765";
  inputs.src-seqmath-0_1_2.repo = "seqmath";
  inputs.src-seqmath-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-seqmath-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-seqmath-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-seqmath-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}