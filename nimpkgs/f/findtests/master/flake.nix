{
  description = ''A helper module for writing unit tests in Nim with nake or similar build system.'';
  inputs.src-findtests-master.flake = false;
  inputs.src-findtests-master.type = "github";
  inputs.src-findtests-master.owner = "jackvandrunen";
  inputs.src-findtests-master.repo = "findtests";
  inputs.src-findtests-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-findtests-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-findtests-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-findtests-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}