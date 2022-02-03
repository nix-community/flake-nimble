{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_2_5.flake = false;
  inputs.src-pgxcrown-v0_2_5.type = "github";
  inputs.src-pgxcrown-v0_2_5.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_2_5.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_2_5.ref = "refs/tags/v0.2.5";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}