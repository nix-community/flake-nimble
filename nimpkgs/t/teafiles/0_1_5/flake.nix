{
  description = ''TeaFiles provide fast read/write access to time series data'';
  inputs.src-teafiles-0_1_5.flake = false;
  inputs.src-teafiles-0_1_5.type = "github";
  inputs.src-teafiles-0_1_5.owner = "andreaferretti";
  inputs.src-teafiles-0_1_5.repo = "nim-teafiles";
  inputs.src-teafiles-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-teafiles-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-teafiles-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-teafiles-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}