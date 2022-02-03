{
  description = ''Nim math library'';
  inputs.src-extmath-master.flake = false;
  inputs.src-extmath-master.type = "github";
  inputs.src-extmath-master.owner = "achesak";
  inputs.src-extmath-master.repo = "extmath.nim";
  inputs.src-extmath-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-extmath-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-extmath-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-extmath-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}