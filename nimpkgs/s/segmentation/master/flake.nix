{
  description = ''Unicode text segmentation tr29'';
  inputs.src-segmentation-master.flake = false;
  inputs.src-segmentation-master.type = "github";
  inputs.src-segmentation-master.owner = "nitely";
  inputs.src-segmentation-master.repo = "nim-segmentation";
  inputs.src-segmentation-master.ref = "refs/heads/master";
  
  
  inputs."unicodedb".url = "path:../../../u/unicodedb";
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  outputs = { self, nixpkgs, src-segmentation-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-segmentation-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-segmentation-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}