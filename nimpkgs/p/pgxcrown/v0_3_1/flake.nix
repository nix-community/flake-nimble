{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_3_1.flake = false;
  inputs.src-pgxcrown-v0_3_1.type = "github";
  inputs.src-pgxcrown-v0_3_1.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_3_1.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}