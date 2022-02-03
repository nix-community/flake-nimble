{
  description = ''Common unicode operations'';
  inputs.src-unicodeplus-master.flake = false;
  inputs.src-unicodeplus-master.type = "github";
  inputs.src-unicodeplus-master.owner = "nitely";
  inputs.src-unicodeplus-master.repo = "nim-unicodeplus";
  inputs.src-unicodeplus-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-unicodeplus-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodeplus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unicodeplus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}