{
  description = ''xam'';
  inputs.src-xam-main.flake = false;
  inputs.src-xam-main.type = "github";
  inputs.src-xam-main.owner = "j-a-s-d";
  inputs.src-xam-main.repo = "xam";
  inputs.src-xam-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-xam-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xam-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xam-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}