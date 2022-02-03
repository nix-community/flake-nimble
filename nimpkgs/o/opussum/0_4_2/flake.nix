{
  description = ''Wrapper around libopus'';
  inputs.src-opussum-0_4_2.flake = false;
  inputs.src-opussum-0_4_2.type = "github";
  inputs.src-opussum-0_4_2.owner = "ire4ever1190";
  inputs.src-opussum-0_4_2.repo = "opussum";
  inputs.src-opussum-0_4_2.ref = "refs/tags/0.4.2";
  
  outputs = { self, nixpkgs, src-opussum-0_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opussum-0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opussum-0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}