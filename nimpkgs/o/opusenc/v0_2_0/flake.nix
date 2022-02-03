{
  description = ''Bindings to libopusenc'';
  inputs.src-opusenc-v0_2_0.flake = false;
  inputs.src-opusenc-v0_2_0.type = "other";
  inputs.src-opusenc-v0_2_0.owner = "~ehmry";
  inputs.src-opusenc-v0_2_0.repo = "nim_opusenc";
  inputs.src-opusenc-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-opusenc-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opusenc-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opusenc-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}