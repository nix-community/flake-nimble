{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';
  inputs.src-nimPNG-v0_2_6.flake = false;
  inputs.src-nimPNG-v0_2_6.type = "github";
  inputs.src-nimPNG-v0_2_6.owner = "jangko";
  inputs.src-nimPNG-v0_2_6.repo = "nimPNG";
  inputs.src-nimPNG-v0_2_6.ref = "refs/tags/v0.2.6";
  
  outputs = { self, nixpkgs, src-nimPNG-v0_2_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimPNG-v0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimPNG-v0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}