{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_1_12.flake = false;
  inputs.src-pgxcrown-v0_1_12.type = "github";
  inputs.src-pgxcrown-v0_1_12.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_12.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_12.ref = "refs/tags/v0.1.12";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_1_12, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_1_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}