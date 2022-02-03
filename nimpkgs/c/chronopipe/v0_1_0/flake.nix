{
  description = ''Show start/end datetime and duration of a command-line process using pipe.'';
  inputs.src-chronopipe-v0_1_0.flake = false;
  inputs.src-chronopipe-v0_1_0.type = "github";
  inputs.src-chronopipe-v0_1_0.owner = "williamd1k0";
  inputs.src-chronopipe-v0_1_0.repo = "chrono";
  inputs.src-chronopipe-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-chronopipe-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chronopipe-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chronopipe-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}