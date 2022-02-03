{
  description = ''Nim math library for sequences and nested sequences (extends math library)'';
  inputs.src-seqmath-master.flake = false;
  inputs.src-seqmath-master.type = "github";
  inputs.src-seqmath-master.owner = "jlp765";
  inputs.src-seqmath-master.repo = "seqmath";
  inputs.src-seqmath-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-seqmath-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-seqmath-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-seqmath-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}