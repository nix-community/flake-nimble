{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';
  inputs.src-nimPNG-0_3_0.flake = false;
  inputs.src-nimPNG-0_3_0.type = "github";
  inputs.src-nimPNG-0_3_0.owner = "jangko";
  inputs.src-nimPNG-0_3_0.repo = "nimPNG";
  inputs.src-nimPNG-0_3_0.ref = "refs/tags/0.3.0";
  
  outputs = { self, nixpkgs, src-nimPNG-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimPNG-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimPNG-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}