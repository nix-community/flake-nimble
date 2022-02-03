{
  description = ''Adds class support to Nim.'';
  inputs.src-classes-v0_2_11.flake = false;
  inputs.src-classes-v0_2_11.type = "github";
  inputs.src-classes-v0_2_11.owner = "jjv360";
  inputs.src-classes-v0_2_11.repo = "nim-classes";
  inputs.src-classes-v0_2_11.ref = "refs/tags/v0.2.11";
  
  outputs = { self, nixpkgs, src-classes-v0_2_11, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classes-v0_2_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-classes-v0_2_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}