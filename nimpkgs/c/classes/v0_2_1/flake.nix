{
  description = ''Adds class support to Nim.'';
  inputs.src-classes-v0_2_1.flake = false;
  inputs.src-classes-v0_2_1.type = "github";
  inputs.src-classes-v0_2_1.owner = "jjv360";
  inputs.src-classes-v0_2_1.repo = "nim-classes";
  inputs.src-classes-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-classes-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classes-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-classes-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}