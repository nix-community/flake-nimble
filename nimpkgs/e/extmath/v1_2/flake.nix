{
  description = ''Nim math library'';
  inputs.src-extmath-v1_2.flake = false;
  inputs.src-extmath-v1_2.type = "github";
  inputs.src-extmath-v1_2.owner = "achesak";
  inputs.src-extmath-v1_2.repo = "extmath.nim";
  inputs.src-extmath-v1_2.ref = "refs/tags/v1.2";
  
  outputs = { self, nixpkgs, src-extmath-v1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-extmath-v1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-extmath-v1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}