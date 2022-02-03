{
  description = ''Transport Services Interface'';
  inputs.src-taps-0_2_2.flake = false;
  inputs.src-taps-0_2_2.type = "other";
  inputs.src-taps-0_2_2.owner = "~ehmry";
  inputs.src-taps-0_2_2.repo = "nim_taps";
  inputs.src-taps-0_2_2.ref = "refs/tags/0.2.2";
  
  outputs = { self, nixpkgs, src-taps-0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-taps-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-taps-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}