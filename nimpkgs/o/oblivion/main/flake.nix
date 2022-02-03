{
  description = ''Shell command manager'';
  inputs.src-oblivion-main.flake = false;
  inputs.src-oblivion-main.type = "github";
  inputs.src-oblivion-main.owner = "sealmove";
  inputs.src-oblivion-main.repo = "oblivion";
  inputs.src-oblivion-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-oblivion-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oblivion-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oblivion-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}