{
  description = ''Nim math library'';
  inputs.src-extmath-v1_1.flake = false;
  inputs.src-extmath-v1_1.type = "github";
  inputs.src-extmath-v1_1.owner = "achesak";
  inputs.src-extmath-v1_1.repo = "extmath.nim";
  inputs.src-extmath-v1_1.ref = "refs/tags/v1.1";
  
  outputs = { self, nixpkgs, src-extmath-v1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-extmath-v1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-extmath-v1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}