{
  description = ''Wrapper around libopus'';
  inputs.src-opussum-0_4_3.flake = false;
  inputs.src-opussum-0_4_3.type = "github";
  inputs.src-opussum-0_4_3.owner = "ire4ever1190";
  inputs.src-opussum-0_4_3.repo = "opussum";
  inputs.src-opussum-0_4_3.ref = "refs/tags/0.4.3";
  
  outputs = { self, nixpkgs, src-opussum-0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opussum-0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opussum-0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}