{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_1_16.flake = false;
  inputs.src-pgxcrown-v0_1_16.type = "github";
  inputs.src-pgxcrown-v0_1_16.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_16.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_16.ref = "refs/tags/v0.1.16";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_1_16, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_16;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_1_16"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}