{
  description = ''Nim math library'';
  inputs.src-extmath-v1_0.flake = false;
  inputs.src-extmath-v1_0.type = "github";
  inputs.src-extmath-v1_0.owner = "achesak";
  inputs.src-extmath-v1_0.repo = "extmath.nim";
  inputs.src-extmath-v1_0.ref = "refs/tags/v1.0";
  
  outputs = { self, nixpkgs, src-extmath-v1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-extmath-v1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-extmath-v1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}