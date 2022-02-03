{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-main.flake = false;
  inputs.src-pgxcrown-main.type = "github";
  inputs.src-pgxcrown-main.owner = "luisacosta828";
  inputs.src-pgxcrown-main.repo = "pgxcrown";
  inputs.src-pgxcrown-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-pgxcrown-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}