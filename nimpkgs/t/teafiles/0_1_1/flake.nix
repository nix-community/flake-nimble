{
  description = ''TeaFiles provide fast read/write access to time series data'';
  inputs.src-teafiles-0_1_1.flake = false;
  inputs.src-teafiles-0_1_1.type = "github";
  inputs.src-teafiles-0_1_1.owner = "andreaferretti";
  inputs.src-teafiles-0_1_1.repo = "nim-teafiles";
  inputs.src-teafiles-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-teafiles-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-teafiles-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-teafiles-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}