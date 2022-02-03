{
  description = ''Library to parse ANSI escape codes'';
  inputs.src-ansiparse-v0_2_0.flake = false;
  inputs.src-ansiparse-v0_2_0.type = "github";
  inputs.src-ansiparse-v0_2_0.owner = "PMunch";
  inputs.src-ansiparse-v0_2_0.repo = "ansiparse";
  inputs.src-ansiparse-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-ansiparse-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ansiparse-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ansiparse-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}