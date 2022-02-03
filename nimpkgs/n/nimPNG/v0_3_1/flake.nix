{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';
  inputs.src-nimPNG-v0_3_1.flake = false;
  inputs.src-nimPNG-v0_3_1.type = "github";
  inputs.src-nimPNG-v0_3_1.owner = "jangko";
  inputs.src-nimPNG-v0_3_1.repo = "nimPNG";
  inputs.src-nimPNG-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-nimPNG-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimPNG-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimPNG-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}