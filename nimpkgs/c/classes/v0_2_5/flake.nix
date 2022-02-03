{
  description = ''Adds class support to Nim.'';
  inputs.src-classes-v0_2_5.flake = false;
  inputs.src-classes-v0_2_5.type = "github";
  inputs.src-classes-v0_2_5.owner = "jjv360";
  inputs.src-classes-v0_2_5.repo = "nim-classes";
  inputs.src-classes-v0_2_5.ref = "refs/tags/v0.2.5";
  
  outputs = { self, nixpkgs, src-classes-v0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classes-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-classes-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}