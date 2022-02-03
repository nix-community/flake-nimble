{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_1_17.flake = false;
  inputs.src-pgxcrown-v0_1_17.type = "github";
  inputs.src-pgxcrown-v0_1_17.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_17.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_17.ref = "refs/tags/v0.1.17";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_1_17, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_17;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_1_17"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}