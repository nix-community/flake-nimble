{
  description = ''Convert Ogham inscriptions to latin text & vice versa.'';
  inputs.src-ogham-main.flake = false;
  inputs.src-ogham-main.type = "github";
  inputs.src-ogham-main.owner = "stscoundrel";
  inputs.src-ogham-main.repo = "ogham-nim";
  inputs.src-ogham-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-ogham-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ogham-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ogham-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}