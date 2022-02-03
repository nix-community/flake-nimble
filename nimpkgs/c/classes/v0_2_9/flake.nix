{
  description = ''Adds class support to Nim.'';
  inputs.src-classes-v0_2_9.flake = false;
  inputs.src-classes-v0_2_9.type = "github";
  inputs.src-classes-v0_2_9.owner = "jjv360";
  inputs.src-classes-v0_2_9.repo = "nim-classes";
  inputs.src-classes-v0_2_9.ref = "refs/tags/v0.2.9";
  
  outputs = { self, nixpkgs, src-classes-v0_2_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classes-v0_2_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-classes-v0_2_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}