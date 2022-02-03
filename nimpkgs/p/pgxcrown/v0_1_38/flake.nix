{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_1_38.flake = false;
  inputs.src-pgxcrown-v0_1_38.type = "github";
  inputs.src-pgxcrown-v0_1_38.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_38.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_38.ref = "refs/tags/v0.1.38";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_1_38, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_38;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_1_38"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}