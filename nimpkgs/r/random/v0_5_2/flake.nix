{
  description = ''Pseudo-random number generation library inspired by Python'';
  inputs.src-random-v0_5_2.flake = false;
  inputs.src-random-v0_5_2.type = "github";
  inputs.src-random-v0_5_2.owner = "oprypin";
  inputs.src-random-v0_5_2.repo = "nim-random";
  inputs.src-random-v0_5_2.ref = "refs/tags/v0.5.2";
  
  outputs = { self, nixpkgs, src-random-v0_5_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-random-v0_5_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-random-v0_5_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}