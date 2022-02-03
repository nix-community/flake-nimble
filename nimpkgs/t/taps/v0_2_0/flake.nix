{
  description = ''Transport Services Interface'';
  inputs.src-taps-v0_2_0.flake = false;
  inputs.src-taps-v0_2_0.type = "other";
  inputs.src-taps-v0_2_0.owner = "~ehmry";
  inputs.src-taps-v0_2_0.repo = "nim_taps";
  inputs.src-taps-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-taps-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-taps-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-taps-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}