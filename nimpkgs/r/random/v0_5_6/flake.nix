{
  description = ''Pseudo-random number generation library inspired by Python'';
  inputs.src-random-v0_5_6.flake = false;
  inputs.src-random-v0_5_6.type = "github";
  inputs.src-random-v0_5_6.owner = "oprypin";
  inputs.src-random-v0_5_6.repo = "nim-random";
  inputs.src-random-v0_5_6.ref = "refs/tags/v0.5.6";
  
  outputs = { self, nixpkgs, src-random-v0_5_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-random-v0_5_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-random-v0_5_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}