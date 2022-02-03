{
  description = ''Wrapper around libopus'';
  inputs.src-opussum-0_5_1.flake = false;
  inputs.src-opussum-0_5_1.type = "github";
  inputs.src-opussum-0_5_1.owner = "ire4ever1190";
  inputs.src-opussum-0_5_1.repo = "opussum";
  inputs.src-opussum-0_5_1.ref = "refs/tags/0.5.1";
  
  outputs = { self, nixpkgs, src-opussum-0_5_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opussum-0_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opussum-0_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}