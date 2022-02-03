{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_1_29.flake = false;
  inputs.src-pgxcrown-v0_1_29.type = "github";
  inputs.src-pgxcrown-v0_1_29.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_29.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_29.ref = "refs/tags/v0.1.29";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_1_29, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_29;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_1_29"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}