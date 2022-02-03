{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_4_3.flake = false;
  inputs.src-pgxcrown-v0_4_3.type = "github";
  inputs.src-pgxcrown-v0_4_3.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_4_3.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_4_3.ref = "refs/tags/v0.4.3";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}