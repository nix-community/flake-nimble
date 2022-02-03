{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_3_2.flake = false;
  inputs.src-pgxcrown-v0_3_2.type = "github";
  inputs.src-pgxcrown-v0_3_2.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_3_2.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_3_2.ref = "refs/tags/v0.3.2";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}