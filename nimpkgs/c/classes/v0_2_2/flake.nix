{
  description = ''Adds class support to Nim.'';
  inputs.src-classes-v0_2_2.flake = false;
  inputs.src-classes-v0_2_2.type = "github";
  inputs.src-classes-v0_2_2.owner = "jjv360";
  inputs.src-classes-v0_2_2.repo = "nim-classes";
  inputs.src-classes-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-classes-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classes-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-classes-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}