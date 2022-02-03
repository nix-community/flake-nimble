{
  description = ''Adds class support to Nim.'';
  inputs.src-classes-v0_2_8.flake = false;
  inputs.src-classes-v0_2_8.type = "github";
  inputs.src-classes-v0_2_8.owner = "jjv360";
  inputs.src-classes-v0_2_8.repo = "nim-classes";
  inputs.src-classes-v0_2_8.ref = "refs/tags/v0.2.8";
  
  outputs = { self, nixpkgs, src-classes-v0_2_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classes-v0_2_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-classes-v0_2_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}