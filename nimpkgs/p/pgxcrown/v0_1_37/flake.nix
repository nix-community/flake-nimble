{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_1_37.flake = false;
  inputs.src-pgxcrown-v0_1_37.type = "github";
  inputs.src-pgxcrown-v0_1_37.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_37.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_37.ref = "refs/tags/v0.1.37";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_1_37, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_37;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_1_37"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}