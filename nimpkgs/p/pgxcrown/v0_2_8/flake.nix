{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_2_8.flake = false;
  inputs.src-pgxcrown-v0_2_8.type = "github";
  inputs.src-pgxcrown-v0_2_8.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_2_8.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_2_8.ref = "refs/tags/v0.2.8";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_2_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_2_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_2_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}