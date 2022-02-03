{
  description = ''Common unicode operations'';
  inputs.src-unicodeplus-v0_8_0.flake = false;
  inputs.src-unicodeplus-v0_8_0.type = "github";
  inputs.src-unicodeplus-v0_8_0.owner = "nitely";
  inputs.src-unicodeplus-v0_8_0.repo = "nim-unicodeplus";
  inputs.src-unicodeplus-v0_8_0.ref = "refs/tags/v0.8.0";
  
  
  inputs."unicodedb".url = "path:../../../u/unicodedb";
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  
  inputs."segmentation".url = "path:../../../s/segmentation";
  inputs."segmentation".type = "github";
  inputs."segmentation".owner = "riinr";
  inputs."segmentation".repo = "flake-nimble";
  inputs."segmentation".ref = "flake-pinning";
  inputs."segmentation".dir = "nimpkgs/s/segmentation";

  outputs = { self, nixpkgs, src-unicodeplus-v0_8_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodeplus-v0_8_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unicodeplus-v0_8_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}