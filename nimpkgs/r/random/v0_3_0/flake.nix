{
  description = ''Pseudo-random number generation library inspired by Python'';
  inputs.src-random-v0_3_0.flake = false;
  inputs.src-random-v0_3_0.type = "github";
  inputs.src-random-v0_3_0.owner = "oprypin";
  inputs.src-random-v0_3_0.repo = "nim-random";
  inputs.src-random-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-random-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-random-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-random-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}