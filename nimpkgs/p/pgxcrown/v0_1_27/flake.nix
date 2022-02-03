{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_1_27.flake = false;
  inputs.src-pgxcrown-v0_1_27.type = "github";
  inputs.src-pgxcrown-v0_1_27.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_27.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_27.ref = "refs/tags/v0.1.27";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_1_27, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_27;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_1_27"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}