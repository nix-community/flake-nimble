{
  description = ''TeaFiles provide fast read/write access to time series data'';
  inputs.src-teafiles-0_1_3.flake = false;
  inputs.src-teafiles-0_1_3.type = "github";
  inputs.src-teafiles-0_1_3.owner = "andreaferretti";
  inputs.src-teafiles-0_1_3.repo = "nim-teafiles";
  inputs.src-teafiles-0_1_3.ref = "refs/tags/0.1.3";
  
  outputs = { self, nixpkgs, src-teafiles-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-teafiles-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-teafiles-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}