{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';
  inputs.src-nimPNG-0_2_7.flake = false;
  inputs.src-nimPNG-0_2_7.type = "github";
  inputs.src-nimPNG-0_2_7.owner = "jangko";
  inputs.src-nimPNG-0_2_7.repo = "nimPNG";
  inputs.src-nimPNG-0_2_7.ref = "refs/tags/0.2.7";
  
  outputs = { self, nixpkgs, src-nimPNG-0_2_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimPNG-0_2_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimPNG-0_2_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}