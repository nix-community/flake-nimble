{
  description = ''Simple implementation of string slices with some of the strutils ported or wrapped to work on them. String slices offer a performance enhancement when working with large amounts of slices from one base string'';
  inputs.src-strslice-master.flake = false;
  inputs.src-strslice-master.type = "github";
  inputs.src-strslice-master.owner = "PMunch";
  inputs.src-strslice-master.repo = "strslice";
  inputs.src-strslice-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-strslice-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-strslice-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-strslice-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}