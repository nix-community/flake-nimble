{
  description = ''Adds class support to Nim.'';
  inputs.src-classes-v0_2_0.flake = false;
  inputs.src-classes-v0_2_0.type = "github";
  inputs.src-classes-v0_2_0.owner = "jjv360";
  inputs.src-classes-v0_2_0.repo = "nim-classes";
  inputs.src-classes-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-classes-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classes-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-classes-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}