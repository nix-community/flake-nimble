{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_3_9.flake = false;
  inputs.src-pgxcrown-v0_3_9.type = "github";
  inputs.src-pgxcrown-v0_3_9.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_3_9.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_3_9.ref = "refs/tags/v0.3.9";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_3_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_3_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_3_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}