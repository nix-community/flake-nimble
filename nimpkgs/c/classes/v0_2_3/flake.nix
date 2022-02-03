{
  description = ''Adds class support to Nim.'';
  inputs.src-classes-v0_2_3.flake = false;
  inputs.src-classes-v0_2_3.type = "github";
  inputs.src-classes-v0_2_3.owner = "jjv360";
  inputs.src-classes-v0_2_3.repo = "nim-classes";
  inputs.src-classes-v0_2_3.ref = "refs/tags/v0.2.3";
  
  outputs = { self, nixpkgs, src-classes-v0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classes-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-classes-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}