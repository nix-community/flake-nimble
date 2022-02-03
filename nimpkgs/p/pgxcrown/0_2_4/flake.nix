{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-0_2_4.flake = false;
  inputs.src-pgxcrown-0_2_4.type = "github";
  inputs.src-pgxcrown-0_2_4.owner = "luisacosta828";
  inputs.src-pgxcrown-0_2_4.repo = "pgxcrown";
  inputs.src-pgxcrown-0_2_4.ref = "refs/tags/0.2.4";
  
  outputs = { self, nixpkgs, src-pgxcrown-0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}