{
  description = ''Base45 encoder and decoder'';
  inputs.src-base45-1_0_0.flake = false;
  inputs.src-base45-1_0_0.type = "other";
  inputs.src-base45-1_0_0.owner = "~ehmry";
  inputs.src-base45-1_0_0.repo = "base45";
  inputs.src-base45-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, src-base45-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-base45-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-base45-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}